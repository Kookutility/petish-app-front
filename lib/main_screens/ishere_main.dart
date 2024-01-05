import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:petdemo/auth_screens/login_screen.dart';

import 'package:petdemo/auth_screens/splash_screen.dart';
import 'package:petdemo/main_screens/init_screen.dart';

import 'package:petdemo/main_screens/search_found_screen.dart';
import 'package:petdemo/main_screens/search_looking_screen.dart';
import 'package:petdemo/main_screens/notification_screen.dart';
import 'package:petdemo/main_screens/map_screen.dart';
import 'package:petdemo/main_screens/widget_model/post_detail_model.dart';
import 'package:petdemo/main_screens/write_screen.dart';
import 'package:petdemo/const/address.dart';
import 'package:petdemo/sign_step/pages/back_account.dart';
import 'package:petdemo/sign_step/pages/condi_term.dart';
import 'package:petdemo/sign_step/pages/nick_name.dart';
import 'package:petdemo/sign_step/pages/phone.dart';
import 'package:petdemo/sign_step/sign_up.dart';
import 'package:petdemo/sign_step/pages/sign_up_done.dart';
import 'package:petdemo/sign_step/steps.dart';
import 'package:petdemo/sign_step/pages/tutorial.dart';
import 'package:petdemo/sign_step/pages/verifyPhone.dart';
import 'package:petdemo/main_screens/search/area_search_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance
      .initialize(clientId: 'raopvm5gte'); // NaverMapSdk 초기화
  runApp(const IsHereMain());
}

class IsHereMain extends StatelessWidget {
  const IsHereMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'isHere',
      debugShowCheckedModeBanner: false,
      initialRoute: home,
      routes: {
        home: (context) => InitScreen(),
        initScreen: (context) => const InitScreen(),
        splashScreen: (context) => const SplashScreen(),
        loginScreen: (context) => const LogInScreen(),
        notificationScreen: (context) => const NotificationScreen(),
        searchLookingScreen: (context) => const LookingScreen(),
        searchFoundScreen: (context) => const FoundScreen(),
        mapScreen: (context) => const MapScreen(),
        writeScreen: (context) => const WriteScreen(),
        areaSearchScreen: (context) => const AreaSearchScreen(),
        //signUp
        signUpStepsScreen: (context) => SignUpStepsScreen(),
        phoneSignScreen: (context) => PhoneSignScreen(),
        verifyphoneScreen: (context) => VerifyPhoneScreen(),
        nickNameScreen: (context) => NickNameScreen(),
        condTermScreen: (context) => CondTermScreen(),
        bankAccScreen: (context) => BankAccountScreen(),
        signUpDoneScreen: (context) => SignUpDoneScreen(),
        tutorialScreen: (context) => TutorialScreen(),

        //notice board
        postDetailWidget: (context) => PostDetailModel(),
      },
    );
  }
}
