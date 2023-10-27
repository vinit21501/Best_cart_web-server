from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.contrib.auth.models import auth
from django.db import connection
from store.models import myModelDic
import datetime

def defaultHome(req):
    tasks = myModelDic['product'].objects.all()[:24]
    name = ''
    if req.user.is_authenticated and req.user.is_customer:
        name = myModelDic['customer'].objects.get(user_id=req.user.id).customer_name
    return render(req, 'index.html', {
        "previous":-1,
        "tasks":tasks,
        "last":2,
        "page_num":[1, 2, 3],
        'name':name
        })

def home(req, index):
    tasks = myModelDic['product'].objects.all()
    name = ''
    if req.user.is_authenticated and req.user.is_customer:
        name = myModelDic['customer'].objects.get(user_id=req.user.id).customer_name
    last = index + 1
    page_num = [index]
    if (index == int(len(tasks) / 24) + 1):
        last = -1
    elif (index * 24 > len(tasks)):
        return render(req, 'notFound.html', {'error':'Error 404 - Nothing Found', 'message':'The page you are looking for could not be found.'})
    else:
        page_num.append(index + 1)
    if (index < 2):
        return defaultHome(req)
    tasks = tasks[24 * (index - 1): 24 * index]
    page_num.append(index - 1)
    return render(req, 'index.html', {
        "previous":index - 1,
        "tasks":tasks,
        "last":last,
        "page_num":list(sorted(page_num)),
        'name':name
        })

def product(req, product_id):
    prod = myModelDic['product'].objects.get(product_id=product_id)
    categoryList = myModelDic['category'].objects.filter(product_id_id=product_id)
    categoryList = [cat.category_name for cat in categoryList]
    name = ''
    if req.user.is_authenticated:
        if req.user.is_customer:
            name = myModelDic['customer'].objects.get(user_id=req.user.id).customer_name
        if req.user.is_seller:
            name = myModelDic['vendor'].objects.get(user_id=req.user.id).vendor_name
    return render(req, 'product.html', {
        'product':prod,
        'category':categoryList,
        'name': name
    })

def category(req, category):
    name = ''
    if req.user.is_authenticated and req.user.is_customer:
        name = myModelDic['customer'].objects.get(user_id=req.user.id).customer_name
    cat = myModelDic['category'].objects.filter(category_name=category)
    productIDs = [category.product_id_id for category in cat]
    tasks = [myModelDic['product'].objects.get(product_id=productid) for productid in productIDs]
    return render(req, 'index.html', {
        "previous":-1,
        "tasks":tasks,
        "last":-1,
        "page_num":[],
        'name':name
    })

def registerCustomer(req):
    if req.method == 'POST':
        name = req.POST['custname']
        email = req.POST['email']
        mobile = req.POST['mobile']
        password1 = req.POST['password1']
        password2 = req.POST['password2']
        location = req.POST['location']
        if (password1 != password2):
            messages.info(req, 'password does not match')
        elif myModelDic['customuser'].objects.filter(email=email).exists():
            messages.info(req, 'email-id is already registered')
        else:
            cust = myModelDic['customuser'].objects.create_user(
                email=email,
                password=password1,
                is_customer=True
            )
            cust.save()
            cust = myModelDic['customer'].objects.create(
                customer_name = name,
                customer_location=location,
                user=cust
            )
            myModelDic['customerphonenumber'].objects.create(
                customer_id_id=cust.customer_id,
                phone_number=mobile
            )
            return redirect('/store/login')
    return render(req, 'register.html', {'customer': True})

def registerVendor(req):
    if req.method == 'POST':
        name = req.POST['custname']
        email = req.POST['email']
        mobile = req.POST['mobile']
        password1 = req.POST['password1']
        password2 = req.POST['password2']
        if (password1 != password2):
            messages.info(req, 'password does not match')
        elif myModelDic['customuser'].objects.filter(email=email).exists():
            messages.info(req, 'email-id is already registered')
        else:
            cust = myModelDic['customuser'].objects.create_user(
                email=email,
                password=password1,
                is_seller=True
            )
            cust.save()
            vend = myModelDic['vendor'].objects.create(
                vendor_name = name,
                user=cust
            )
            myModelDic['vendorphonenumber'].objects.create(
                vendor_id_id=vend.vendor_id,
                phone_number=mobile
            )
            return redirect('/store/login')
    return render(req, 'register.html', {'customer': False})

def login(req):
    if req.method == 'POST':
        username = req.POST['email']
        password = req.POST['password']
        user = auth.authenticate(email=username, password=password)
        if user is not None:
            auth.login(req, user)
            if req.user.is_customer:
                return redirect('/store/')
            elif req.user.is_seller:
                return redirect('/store/vendor')
        else:
            messages.info(req, "invalid credentials")
    return render(req, 'login.html')

def logout(req):
    auth.logout(req)
    return redirect('/store')

def profile(req):
    if req.user.is_authenticated:
        user = req.user
        if user.is_customer:
            cust = myModelDic['customer'].objects.get(user_id=user.id)
            return render(req, 'profile.html', {
                'customer': cust,
                'name': cust.customer_name,
                'mobile': myModelDic['customerphonenumber'].objects.filter(customer_id_id=cust.customer_id)
            })
        elif user.is_seller:
            cust = myModelDic['vendor'].objects.get(user_id=user.id)
            return render(req, 'profile.html', {
                'vendor': cust,
                'mobile': myModelDic['vendorphonenumber'].objects.filter(vendor_id_id=cust.vendor_id)
            })
    else:
        return redirect('/store/login')

def addtocart(req, id):
    if not (req.user.is_authenticated and req.user.is_customer):
        return redirect('/store/login')
    cust = myModelDic['customer'].objects.get(user_id=req.user.id)
    myModelDic['cart'].objects.create(customer_id_id=cust.customer_id, product_id_id=id)
    return redirect(f'/store/product/{id}')

def addtowishlist(req, id):
    if not (req.user.is_authenticated and req.user.is_customer):
        return redirect('/store/login')
    cust = myModelDic['customer'].objects.get(user_id=req.user.id)
    myModelDic['wishlist'].objects.create(customer_id_id=cust.customer_id, product_id_id=id)
    return redirect(f'/store/product/{id}')

def cart(req):
    if not (req.user.is_authenticated and req.user.is_customer):
        return redirect('/store/login')
    cust = myModelDic['customer'].objects.get(user_id=req.user.id)
    cat = myModelDic['cart'].objects.filter(customer_id_id=cust.customer_id)
    if len(cat) == 0:
        return render(req, 'cart.html', {
        'name':cust.customer_name,
        'empty': True
    })
    tasks = [{'prod' : myModelDic['product'].objects.get(product_id=ele.product_id_id), 'order': ele} for ele in cat]
    if req.method == 'POST':
        for prodid, quantity in req.POST.items():
            if prodid.isnumeric():
                prodid = int(prodid)
                for prod in tasks:
                    if prod["prod"].product_id == prodid:
                        if int(quantity) == 0:
                            with connection.cursor() as cur:
                                cur.execute(f'DELETE FROM store_cart WHERE customer_id_id = {cust.customer_id} and product_id_id = {prodid}')
                        else:
                            prod['order'].product_quantity = int(quantity)
                            prod['order'].save()
        return redirect("/store/checkout")
    return render(req, 'cart.html', {
        "details":tasks,
        'name':cust.customer_name,
        'empty':False
    })

def add_product(req):
    if req.method == 'POST':
        pro = myModelDic['product']()
        pro.product_name = req.POST['name']
        pro.specification = req.POST['desc']
        pro.price = req.POST['price']
        pro.quantity = req.POST['quantity']
        pro.image = req.FILES['image']
        pro.save()
        myModelDic['category'].objects.create(product_id_id=pro.product_id, category_name=req.POST['cat_name'])
        ven = myModelDic['vendor'].objects.get(user_id=req.user.id).vendor_id
        # pro = myModelDic['product'].objects.create(product_name=name, specification=description, price=price, quantity=quantity)
        myModelDic['venlist'].objects.create(vendor_id_id=ven, product_id_id=pro.product_id)
        return redirect("/store/vendor")
    return render(req, 'add_product.html')

def vendor(req):
    if req.user.is_authenticated and req.user.is_seller:
        user = myModelDic['vendor'].objects.get(user_id=req.user.id)
        productIDs = myModelDic['venlist'].objects.filter(vendor_id_id=user.vendor_id)
        tasks = [myModelDic['product'].objects.get(product_id=productid.product_id_id) for productid in productIDs]
        return render(req, 'vendor.html', {
            "tasks":tasks,
            'name':user.vendor_name
        })
    return redirect('/store/login')

def removeProduct(req):
    if req.user.is_authenticated and req.user.is_seller:
        user = myModelDic['vendor'].objects.get(user_id=req.user.id)
        productIDs = myModelDic['venlist'].objects.filter(vendor_id_id=user.vendor_id)
        tasks = [myModelDic['product'].objects.get(product_id=productid.product_id_id) for productid in productIDs]
        return render(req, 'removed.html', {
            "tasks":tasks,
            'name':user.vendor_name
        })
    return redirect('/store/login')

def wishlist(req):
    if not (req.user.is_authenticated and req.user.is_customer):
        return redirect('/store/login')
    cust = myModelDic['customer'].objects.get(user_id=req.user.id)
    wislis = myModelDic['wishlist'].objects.filter(customer_id_id=cust.customer_id)
    empty = False
    if len(wislis) == 0:
        empty = True
    productIDs = [product.product_id_id for product in wislis]
    tasks = [myModelDic['product'].objects.get(product_id=productid) for productid in productIDs]
    return render(req, 'wishlist.html', {
        "tasks":tasks,
        'empty':empty,
        'name':cust.customer_name,
    })

def orders(req):
    if not (req.user.is_authenticated and req.user.is_customer):
        return redirect('/store/login')
    cust = myModelDic['customer'].objects.get(user_id=req.user.id)
    orders_list = myModelDic['order'].objects.filter(customer_id_id=cust.customer_id)
    return render(req, 'orders.html', {
        "tasks":orders_list,
        'name':cust.customer_name
    })

def order(req, order_id):
    if not (req.user.is_authenticated and req.user.is_customer):
        return redirect('/store/login')
    cust = myModelDic['customer'].objects.get(user_id=req.user.id)
    productorder = myModelDic['order'].objects.get(order_id=order_id)
    productOrdered = myModelDic['manypro'].objects.filter(order_id_id=productorder.order_id)
    products = [{'detail' : ord, 'product' : myModelDic['product'].objects.get(product_id=ord.product_id_id)} for ord in productOrdered]
    total = sum(product.amount for product in productOrdered)
    return render(req, 'order.html', {'order':productorder, 'products':products, 'total':total, 'name':cust.customer_name})

def checkout(req):
    if not (req.user.is_authenticated and req.user.is_customer):
        return redirect('/store/login')
    cust = myModelDic['customer'].objects.get(user_id=req.user.id)
    if req.method == 'POST':
        if req.POST.get('mode') == 'none':
            messages.info(req, "Please choose something!")
            return render(req, 'checkout.html', {'name' : cust.customer_name})
        total = 0
        with connection.cursor() as cur:
            cur.execute(f"SELECT * FROM store_cart WHERE customer_id_id = {cust.customer_id}")
            cartlist = cur.fetchall()
            prodlist = []
            for i in cartlist:
                cur.execute(f"SELECT * FROM store_product WHERE product_id  = {i[2]}")
                prod = cur.fetchall()[0]
                if prod[4] < i[3]:
                    messages.info(req, f"Sorry, Some products out of stock! like {prod[1]}")
                    return redirect('/store/cart')
                prodlist.append(prod)
        ord = myModelDic['order'].objects.create(
            status='dispatched',
            customer_id_id=cust.customer_id
        )
        with connection.cursor() as cur:
            for i in range(len(cartlist)):
                cur.execute(f"INSERT INTO store_many_pro (product_quantity, amount, order_id_id, product_id_id) VALUE({cartlist[i][3]}, {cartlist[i][3] * prodlist[i][3]}, {ord.order_id}, {prodlist[i][0]})")
                cur.execute(f"DELETE FROM store_cart WHERE id = {cartlist[i][0]}")
                total += cartlist[i][3] * prodlist[i][3]
        if req.POST.get('mode') == 'online':
            tran = myModelDic['transactionDetail'].objects.create(
                order_date = datetime.date.today(),
                transaction_time = datetime.datetime.now().time(),
                amount = total
            )
            ord.mode_of_payment = 'online'
            ord.transaction_id_id = tran.transaction_id
        if req.POST.get('mode') == "offline":
            ord.mode_of_payment = 'offline'
        ord.save()
        return redirect('/store/cart')
    else:
        return render(req, 'checkout.html', {'name' : cust.customer_name})

def result(req):
    name = ''
    if req.user.is_authenticated and req.user.is_customer:
        cust = myModelDic['customer'].objects.get(user_id=req.user.id)
        name = cust.customer_name
    if req.method == 'POST':
        tasks = myModelDic['product'].objects.filter(product_name__contains=req.POST['search']).exclude(quantity=0)
        # task = []
        # for i in tasks:
        #     if i.quantity != 0:
        #         task.append(task)
        # tasks = task
        if len(tasks) == 0:
            return render(req, 'notFound.html', {'error':"product not found", "message": "find some other products"})
        else:
            return render(req, 'index.html', {
                "previous":-1,
                "tasks":tasks,
                "last":-1,
                "page_num":[],
                'name':name
    })
    return redirect('/store/home')

def deleteFromVendor(req, product_id):
    if req.user.is_authenticated and req.user.is_seller:
        vend = myModelDic['vendor'].objects.get(user_id=req.user.id)
        with connection.cursor() as cur:
            cur.execute(f'UPDATE store_product SET quantity=0 WHERE product_id={product_id}')
    return redirect('/store/vendor')

def deleteFromWishlist(req, product_id):
    if req.user.is_authenticated and req.user.is_customer:
        cust = myModelDic['customer'].objects.get(user_id=req.user.id)
        with connection.cursor() as cur:
            cur.execute(f"DELETE FROM store_wishlist WHERE customer_id_id={cust.customer_id} and product_id_id={product_id}")
    return redirect('/store/wishlist')

def test(req):
    # img = myModelDic['test'].objects.get(id=2)
    return render(req, 'basetemplate.html')