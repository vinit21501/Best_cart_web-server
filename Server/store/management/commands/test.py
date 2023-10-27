from django.core.management.base import BaseCommand
from django.db import connection
from store.models import myModelDic
from passlib.hash import pbkdf2_sha256

class Command(BaseCommand):
    help = "load data  data to server"
    def handle(self, *args, **options):
        tasks = myModelDic['product'].objects.filter(product_name__contains='mug')
        for task in tasks:
            if task.quantity != 0:
                tasks.exclude(product_id=task.product_id)
        print(tasks)
                # tasks.pop(task)
        # with connection.cursor() as cur:
        #     cur.execute('select password from BEST_CART.store_customuser where id = 1;')
        #     pasw = cur.fetchall()[0][0]
        #     print(pasw)
        #     print(pbkdf2_sha256.hash(pasw))
        #     print(pbkdf2_sha256.verify('0000', pasw))
        # prod = myModelDic['product'].objects.all()
        # for i in prod:
        #     path = str(i.image)
        #     if path.startswith("product"):
        #         i.image = "static/" + path
        #         i.save()
        # print(myModelDic['product'].objects.filter(product_name__contains='test'))
        # with connection.cursor() as cur:
        #     cur.execute(f"SELECT * FROM store_product WHERE product_id  = {1}")
        #     prod = cur.fetchall()
        # print(prod)
        # ord = myModelDic['order'].objects.create(
        #     status='dispatched',
        #     customer_id_id=1,
        #     transaction_id_id = 1
        # )
        # cust = myModelDic['customer'].objects.get(user_id=25)
        # cat = myModelDic['cart'].objects.filter(customer_id_id=cust.customer_id)
        # tasks = [{'prod' : myModelDic['product'].objects.get(product_id=ele.product_id_id), 'quantity': ele.product_quantity} for ele in cat]
        # for i, j in tasks:
        #     print(i.product_id)
        #     data = cursor.fetchall()
        #     print(data[0][3] - 3)



