import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/features/authenication/screens/welcome/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                  image: AssetImage(welcomeScreenImage), height: height * 0.4),
              Column(
                children: [
                  Text(
                    tWelcomeTitle,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    tWelcomeSubTitle,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                          onPressed: () => Get.to(() => const LoginScreen()),
                          child: Text(tLogin.toUpperCase()))),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(tSignup.toUpperCase())),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
