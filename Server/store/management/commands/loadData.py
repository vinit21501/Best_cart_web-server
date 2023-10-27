from django.core.management.base import BaseCommand
from faker import Faker
from store.models import myModelDic
import faker
import random

# python3 manage.py makemigrations
# python3 manage.py sqlmigrate store 0001
# python3 manage.py migrate
# python3 manage.py loadData

productName = []
with open("./data/products.txt", "r") as file:
    for i in file.readlines():
        productName.append(i.strip())

class Provider(faker.providers.BaseProvider):
    def getProductName(self):
        return self.random_element(productName)

class Command(BaseCommand):
    help = "load data  data to server"
    def handle(self, *args, **options):
        # with open('./data/productsimg/1.png', 'rb') as file:
        # myModelList[0].objects.create(imt="Sdgasg")
        fake = Faker()
        fake.add_provider(Provider)
        
        # # customer generate
        # for i in range(101):
        #     cust = myModelDic['customuser'].objects.create_user(
        #         email=fake.email(),
        #         password="0000",
        #         is_customer=True
        #     )
        #     cust.save()
        #     cust = myModelDic['customer'].objects.create(
        #         customer_name = fake.name(),
        #         customer_location=fake.address()[:50],
        #         user=cust
        #     )
        #     myModelDic['customerphonenumber'].objects.create(
        #         customer_id_id=cust.customer_id,
        #         phone_number=fake.phone_number()[:14]
        #     )


        # # vendor generate
        # for i in range(96):
        #     cust = myModelDic['customuser'].objects.create_user(
        #         email=fake.email(),
        #         password="0000",
        #         is_seller=True
        #     )
        #     cust.save()
        #     vend = myModelDic['vendor'].objects.create(
        #         vendor_name = fake.name(),
        #         user=cust
        #     )
        #     myModelDic['vendorphonenumber'].objects.create(
        #         vendor_id_id=vend.vendor_id,
        #         phone_number=fake.phone_number()[:14]
        #     )


        # # product by vendor
        # productlist = [i for i in myModelDic['product'].objects.all()]
        # vendorlist = [i for i in myModelDic['vendor'].objects.all()]
        # while (len(productlist) != 0):
        #     prod = productlist.pop()
        #     myModelDic['venlist'].objects.create(
        #         product_id_id = prod.product_id,
        #         vendor_id_id = random.choice(vendorlist).vendor_id
        #     )


        # # product
        # for i in range(101):
        #     myModelDic['product'].objects.create(
        #         product_name=fake.unique.getProductName()[:25],
        #         specification=fake.text(max_nb_chars=30),
        #         price=round(random.uniform(49.99, 9999.99), 2),
        #         quantity=int(random.uniform(0, 50)),
        #         image=f'products/product{random.randint(1, 20)}.jpg'
        #         )

        # # cart
        # customerlist = [i for i in myModelDic["customer"].objects.all()]
        # productlist = [i for i in myModelDic['product'].objects.all()]
        # while (len(customerlist) != 0):
        #     cust = customerlist.pop()
        #     for i in range(random.randint(1, 5)):
        #         myModelDic['cart'].objects.create(
        #             customer_id_id=cust.customer_id,
        #             product_id_id=random.choice(productlist).product_id
        #         )

        # # whishlist
        # customerlist = [i for i in myModelDic["customer"].objects.all()]
        # productlist = [i for i in myModelDic['product'].objects.all()]
        # while (len(customerlist) != 0):
        #     cust = customerlist.pop()
        #     for i in range(random.randint(1, 5)):
        #         myModelDic['wishlist'].objects.create(
        #             customer_id_id=cust.customer_id,
        #             product_id_id=random.choice(productlist).product_id
        #         )

        # # category
        # produtlist = [i for i in myModelDic["product"].objects.all()]
        # while (len(produtlist) != 0):
        #     prod_id = random.choice(produtlist)
            
        #     # # category
        #     # myModelDic["category"].objects.create(category_name=fake.unique.getProductName()[:25], product_id=prod_id)

        #     # # vendor
        #     # myModelDic["vendor"].objects.create(vendor_name=fake.name(), product_id=prod_id, phone_number=fake.phone_number())
        #     # produtlist.remove(prod_id)

        # # Transaction_detail
        # for i in range(110):
        #     myModelDic['transactionDetail'].objects.create(
        #         order_date=fake.date(),
        #         transaction_time=fake.time(),
        #         amount=round(random.uniform(49.99, 9999.99), 2)
        #         )

        # Orders
        paymentlist = ['online', 'offline']
        statuslist = ['dispatched', 'cancelled', 'delivered']
        transctionid = [i for i in myModelDic['transactionDetail'].objects.all()]
        produtlist = [i for i in myModelDic['product'].objects.all()]
        customerlis = [i for i in myModelDic['customer'].objects.all()]
        while len(transctionid) != 0:
            cust = random.choice(customerlis)
            transact = transctionid.pop()
            produt = random.choice(produtlist)
            ord = myModelDic['order'].objects.create(
                transaction_id=transact,
                status=random.choice(statuslist),
                mode_of_payment=random.choice(paymentlist), 
                customer_id_id=cust.customer_id)
            myModelDic['manypro'].objects.create(
                product_id_id=produt.product_id,
                product_quantity=random.uniform(0, 50),
                amount=round(random.uniform(49.99, 9999.99), 2),
                order_id_id = ord.order_id
            )