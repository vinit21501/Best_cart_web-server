from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from . import views

app_name="store"

urlpatterns = [
    path("", views.defaultHome, name='defaultHome'),
    path("page/<int:index>", views.home, name='home'),
    path("registerCustomer", views.registerCustomer, name='registerCustomer'),
    path("registerVendor", views.registerVendor, name='registerVendor'),
    path("login", views.login, name='login'),
    path("vendor", views.vendor, name='vendor'),
    path("add_product", views.add_product, name='add_product'),
    path("category/<str:category>", views.category, name='category'),
    path("product/<int:product_id>", views.product, name='product'),
    path("removeProduct", views.removeProduct, name='removeProduct'),
    path("deleteFromVendor/<int:product_id>", views.deleteFromVendor, name='deleteFromVendor'),
    path("deleteFromWishlist/<int:product_id>", views.deleteFromWishlist, name='deleteFromWishlist'),
    path("logout", views.logout, name='logout'),
    path("cart", views.cart, name='cart'),
    path("wishlist", views.wishlist, name='wishlist'),
    path("orders", views.orders, name='orders'),
    path("result", views.result, name='result'),
    path("checkout", views.checkout, name='checkout'),
    path("order/<int:order_id>", views.order, name='order'),
    path("addtowishlist/<int:id>", views.addtowishlist, name='addtowishlist'),
    path("addtocart/<int:id>", views.addtocart, name='addtocart'),
    path("profile", views.profile, name='profile'),
    path("test", views.test, name='test')
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)