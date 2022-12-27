import 'package:get/get.dart';
import 'package:tourism/controllers/controllers.dart';
import 'package:tourism/controllers/controllers/signup_controller.dart';
import 'package:tourism/views/auth/login.dart';
import 'package:tourism/views/auth/login_or_create/login_or_create.dart';
import 'package:tourism/views/auth/new_password.dart';
import 'package:tourism/views/auth/otp.dart';
import 'package:tourism/views/auth/reset_password.dart';
import 'package:tourism/views/auth/signup.dart';
import 'package:tourism/views/change_address/change_address.dart';
import 'package:tourism/views/checkout/checkout.dart';
import 'package:tourism/views/dashbord/dashbord.dart';
import 'package:tourism/views/dashbord/menu/explore_menu/explore_menu.dart';
import 'package:tourism/views/dashbord/menu/menu.dart';
import 'package:tourism/views/dashbord/more/about/about.dart';
import 'package:tourism/views/dashbord/more/inbox/inbox.dart';
import 'package:tourism/views/dashbord/more/more.dart';
import 'package:tourism/views/dashbord/more/notification/notification.dart';
import 'package:tourism/views/dashbord/more/order/my_order.dart';
import 'package:tourism/views/dashbord/more/paymet/paymet.dart';
import 'package:tourism/views/dashbord/offers/offers.dart';
import 'package:tourism/views/dashbord/profile/profile.dart';
import 'package:tourism/views/deal/deal.dart';
import 'package:tourism/views/explore_product/explore_product.dart';
import 'package:tourism/views/slider/page_slider.dart';
import 'package:tourism/views/splash/splash.dart';
import 'package:tourism/views/usertype/usertype.dart';
import 'package:tourism/views/views.dart';

abstract class Routes {
  static const String splash = '/splash';
  static const String usertype = '/usertype';
  static const String finddeal = '/deal';
  static const String loginOrCreate = '/login_or_create';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String resetpassword = '/reset_password';
  static const String otp = '/otp';
  static const String newpasword = '/new_password';
  static const String pageSlider = '/pageslider';
  static const String dashbord = '/dashbord';
  static const String home = '/home';
  static const String menu = '/menu';
  static const String offers = '/offers';
  static const String exploreMenu = '/explore_menu';
  static const String exploreproduct = '/explore_product';
  static const String cart = '/cart';
  static const String profile = '/profile';
  static const String more = '/more';
  static const String paymet = '/paymet';
  static const String myorder = '/order';
  static const String checkout = '/checkout';
  static const String changeaddress = '/change_address';
  static const String finalorder = '/final_order';
  static const String notification = '/notification';
  static const String inbox = '/inbox';
  static const String about = '/about';
}

class AppPages {
  static const String initial = Routes.splash;
  static final List<GetPage> routes = <GetPage>[
    GetPage(
      name: Routes.splash,
      page: () => const SplashView(),
      binding: BindingsBuilder.put(
        () => SplashController(),
      ),
    ),
    GetPage(
      name: Routes.usertype,
      page: () => const UserTypeView(),
    ),
    GetPage(
      name: Routes.finddeal,
      page: () => const FindDealView(),
    ),
    GetPage(
      name: Routes.loginOrCreate,
      page: () => const LoginOrCreateView(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginView(),
      binding: BindingsBuilder.put(
        () => LoginController(),
      ),
    ),
    GetPage(
      name: Routes.signup,
      page: () => SignUpView(),
      binding: BindingsBuilder.put(() => SignUpController()),
    ),
    GetPage(
      name: Routes.resetpassword,
      page: () => const ResetPasswordView(),
    ),
    GetPage(
      name: Routes.otp,
      page: () => const OtpView(),
    ),
    GetPage(
      name: Routes.newpasword,
      page: () => NewPasswordView(),
    ),
    GetPage(
      name: Routes.pageSlider,
      page: () => SliderView(),
    ),
    GetPage(
      name: Routes.dashbord,
      page: () => const DashbordView(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.menu,
      page: () => MenuView(),
    ),
    GetPage(
      name: Routes.offers,
      page: () => OffersView(),
    ),
    GetPage(
      name: Routes.exploreMenu,
      page: () => ExploreMenuView(),
    ),
    GetPage(
      name: Routes.exploreproduct,
      page: () => ExploreProductView(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => ProfileView(),
    ),
    GetPage(
      name: Routes.more,
      page: () => MoreView(),
    ),
    GetPage(
      name: Routes.paymet,
      page: () => PaymetView(),
    ),
    GetPage(
      name: Routes.myorder,
      page: () => MyOrderView(),
    ),
    GetPage(
      name: Routes.checkout,
      page: () => CheckOutView(),
    ),
    GetPage(
      name: Routes.changeaddress,
      page: () => ChangeAddressview(),
    ),
    GetPage(
      name: Routes.finalorder,
      page: () => const FindDealView(),
    ),
    GetPage(
      name: Routes.notification,
      page: () => NotificationView(),
    ),
    GetPage(
      name: Routes.inbox,
      page: () => InboxView(),
    ),
    GetPage(
      name: Routes.about,
      page: () => AboutUsView(),
    ),
  ];
}
