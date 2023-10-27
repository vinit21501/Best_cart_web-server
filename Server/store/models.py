from django.db import models
from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin
from django.utils import timezone
from .manager import CustomerManager
import datetime, os
# Create your models here.

def filepath(request, filename):
    # old_filename = filename
    # timeNow = datetime.datetime.now().time()
    # filename = timeNow + old_filename
    return os.path.join('./static/products/', filename)

class CustomUser(AbstractBaseUser, PermissionsMixin):
    email = models.EmailField(unique=True)
    is_staff = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    data_joined = models.DateTimeField(default=timezone.now)

    is_seller = models.BooleanField(default=False)
    is_customer = models.BooleanField(default=False)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    objects = CustomerManager()
    def __str__(self):
        return self.email


class Product(models.Model):
    product_id = models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID")
    product_name = models.CharField(max_length=30, null=False)
    specification = models.TextField()
    price = models.DecimalField(max_digits=10, decimal_places=2)
    quantity  = models.IntegerField(null=False)
    image = models.ImageField(upload_to=filepath, null=True, blank=True)

class Category(models.Model):
    category_name = models.CharField(max_length=30)
    product_id  = models.ForeignKey('Product', on_delete=models.CASCADE)

class Transaction_detail(models.Model):
    transaction_id = models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID")
    order_date = models.DateField()
    transaction_time = models.TimeField()
    amount = models.DecimalField(max_digits=10, decimal_places=2)

class Vendor(models.Model):
    user = models.OneToOneField(CustomUser, on_delete=models.CASCADE)
    vendor_id = models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID")
    vendor_name = models.CharField(max_length=30, null=False)

class Orders(models.Model):
    order_id = models.BigAutoField(
                    auto_created=True,
                    primary_key=True,
                    serialize=False,
                    verbose_name="ID")
    customer_id = models.ForeignKey('Customer', on_delete=models.CASCADE)
    transaction_id = models.ForeignKey('Transaction_detail', on_delete=models.SET_NULL, null=True)
    status = models.CharField(max_length=12, null=False)
    mode_of_payment = models.CharField(max_length=10, null=False)

class Customer(models.Model):
    user = models.OneToOneField(CustomUser, on_delete=models.CASCADE)
    customer_id = models.BigAutoField(
                    auto_created=True,
                    primary_key=True,
                    serialize=False,
                    verbose_name="ID")
    customer_name = models.CharField(max_length=30, null=False)
    customer_location = models.CharField(max_length=50)

class Cart(models.Model):
    customer_id = models.ForeignKey('Customer', on_delete=models.CASCADE)
    product_id = models.ForeignKey('Product', on_delete=models.CASCADE)
    product_quantity = models.IntegerField(null=False, default=1)

class Administrator(models.Model):
    admin_id = models.BigAutoField(
        auto_created=True,
        primary_key=True,
        serialize=False,
        verbose_name="ID")
    admin_name = models.CharField(max_length=30)
    email = models.CharField(max_length=30)

class Many_pro(models.Model):
    order_id = models.ForeignKey('Orders', on_delete=models.CASCADE)
    product_id = models.ForeignKey("Product", on_delete=models.CASCADE)
    product_quantity = models.IntegerField(null=False)
    amount = models.DecimalField(max_digits=10, decimal_places=2)

class Admin_phone_number(models.Model):
    admin_id = models.ForeignKey("Administrator", on_delete=models.CASCADE)
    phone_number = models.CharField(max_length=14)

class Customer_phone_number(models.Model):
    customer_id = models.ForeignKey("Customer", on_delete=models.CASCADE)
    phone_number = models.CharField(max_length=14)

class Vendor_phone_number(models.Model):
    vendor_id = models.ForeignKey("Vendor", on_delete=models.CASCADE)
    phone_number = models.CharField(max_length=14)

class Venlist(models.Model):
    vendor_id = models.ForeignKey('Vendor', on_delete=models.CASCADE)
    product_id = models.ForeignKey('Product', on_delete=models.CASCADE)

class Wishlist(models.Model):
    customer_id = models.ForeignKey("Customer", on_delete=models.CASCADE)
    product_id = models.ForeignKey('Product', on_delete=models.CASCADE)

myModelList = [CustomUser, Product, Administrator, Cart, Customer, Orders, Vendor, Transaction_detail, Category, Many_pro, Admin_phone_number, Customer_phone_number, Vendor_phone_number, Venlist, Wishlist]
myModelDic = {'customuser':CustomUser, 'product':Product, 'admin':Administrator, 'cart':Cart, 'customer':Customer, 'order':Orders, 'vendor':Vendor, 'transactionDetail':Transaction_detail, 'category':Category, 'manypro':Many_pro, 'adminphonenumber':Admin_phone_number, 'customerphonenumber':Customer_phone_number, 'vendorphonenumber':Vendor_phone_number, 'venlist':Venlist, 'wishlist':Wishlist}

# class test(models.Model):
#     imt = models.ImageField(upload_to=filepath, null=True, blank=True)

# myModelList = [test]
# myModelDic = {'test':test}