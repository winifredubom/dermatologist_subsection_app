

import 'package:flutter/material.dart';
import 'package:setup/screens/home/carts/cart-screen.dart';
import 'package:setup/screens/home/dashboard/home-screen.dart';
import 'package:setup/screens/home/home_bottom_nav.dart';
import 'package:setup/screens/home/medicals/medicals.dart';
import 'package:setup/screens/home/profile/contact-info.dart';
import 'package:setup/screens/home/profile/health-files.dart';
import 'package:setup/screens/home/profile/profile.dart';

import '../data/models/medication-data.dart';


class AppRoutes {
  static const home = '/home';
  static const medicals = '/Medicals';
  static const profile = '/Profile';
  static const bottomNav = '/BottomNav';
  static const contactInfo = '/contactInfo';
  static const health = '/health';
  static const cart = '/cart';
  // static const onboarding = '/onboarding';
  // static const set4 = '/set4';
  // static const set5 = '/set5';
  // static const forgetPass = '/forgetPass';
  // static const forgetPass1 = '/forgetPass1';
  // static const success = '/success';
  // static const notification = '/notification';
  // static const search = '/search';
  // static const kcy1 = '/kyc1';
  // static const kcy2 = '/kyc2';
  // static const kcy3 = '/kyc3';
  // static const kcy3b = '/kyc3b';
  // static const kcy4 = '/kyc4';
  // static const referHis = '/referHis';
  // static const addProduct = '/addProduct';
  // static const analytic2 = '/analytic2';
  // static const allDetails = '/allDetails';
  // static const accept = '/accept';
  // static const bargain = '/bargain';
  // static const policy = '/policy';
  // static const verify = '/verify';
  // static const reset = '/reset';
  // static const congrat = '/congrat';
  static const appointments  = '/congrat';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // E.g Navigator.of(context).pushNamed(AppRoutes.theScreenYouAreGoingTo);
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );case AppRoutes.bottomNav:
      return MaterialPageRoute<dynamic>(
        builder: (_) =>  BottomNav(appRoutes: AppRoutes(),),
        settings: settings,
      );
      case AppRoutes.medicals:
        return MaterialPageRoute<dynamic>(
          builder: (_) =>   MedicalsScreen(),
          settings: settings,
        );
      case AppRoutes.cart:
        return MaterialPageRoute(
    builder: (context) => CartScreen(), // Pass medications list
    );
      case AppRoutes.profile:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Profile(),
          settings: settings,
        );
      case AppRoutes.contactInfo:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const ContactInfo(),
          settings: settings,
        );
      case AppRoutes.health:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const Health_files(),
          settings: settings,
        );
    //   case AppRoutes.forgetPass1:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const ForgetPasswordScreen2(),
    //       settings: settings,
    //     );
    //   case AppRoutes.success:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const SuccessScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.notification:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const NotificationScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.search:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) =>  SearchScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.kcy1:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const KycScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.kcy2:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const KycBasicInfoScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.kcy3:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const KycVerifyNumberScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.kcy3b:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const KycVerifyNumberScreenB(),
    //       settings: settings,
    //     );
    //   case AppRoutes.kcy4:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const KycUploadDocumentScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.referHis:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) =>  ReferHistoryScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.addProduct:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) =>  AddProductScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.analytic2:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const AnalyticScreen2(),
    //       settings: settings,
    //     );
    //   case AppRoutes.allDetails:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) =>  DetailsOrderScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.accept:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const AcceptBargainScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.bargain:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const BargainDetailsScreen(),
    //       settings: settings,
    //     );
    //   case AppRoutes.policy:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) => const PrivacyScreen(),
    //       settings: settings,
    //     ); case AppRoutes.verify:
    //   return MaterialPageRoute<dynamic>(
    //     builder: (_) =>  const VerificationScreen(),
    //     settings: settings,
    //   );
    //   case AppRoutes.congrat:
    //     return MaterialPageRoute<dynamic>(
    //       builder: (_) =>  const CongratScreen(),
    //       settings: settings,
    //     );
    // // case AppRoutes.reset:
    // //   return MaterialPageRoute<dynamic>(
    // //     builder: (_) =>  const ForgetPasswordScreen2(),
    // //     settings: settings,
    // //   );
    // // case AppRoutes.product:
    // // return MaterialPageRoute<dynamic>(
    // //   builder: (_) =>  ProductDetailsScreen(),
    // //   settings: settings,
    // // );

      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const Scaffold(),
          settings: settings,
        );
    }
  }
}