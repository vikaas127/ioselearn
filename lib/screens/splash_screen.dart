import 'package:academy_app/constants.dart';
import 'package:flutter/material.dart';
import 'tabs_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    donLogin();
    super.initState();
  }

  void donLogin() {
    String? token;
    Future.delayed(const Duration(seconds: 3), () async {
      // token = await SharedPreferenceHelper().getAuthToken();
      if (token != null && token.isNotEmpty) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const TabsScreen()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const TabsScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: SizedBox(
          child: Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.cover,
          ),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
        ),
      ),
    );
  }
}
