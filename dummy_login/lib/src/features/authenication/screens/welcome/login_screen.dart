import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/features/authenication/screens/welcome/otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(tDefaultSize),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage(welcomeScreenImage),
                        height: size.height * 0.2,
                      ),
                      Text(tLoginTitle,
                          style: Theme.of(context).textTheme.headline4),
                      Text(tLoginSubtitle,
                          style: Theme.of(context).textTheme.bodyText1),
                      //end

                      LoginForm(),
                      // Buttons
                      LoginButton(context),
                    ]))));
  }

  Column LoginButton(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const Text("OR"),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        width: double.infinity,
        child: OutlinedButton.icon(
          icon: Image(
            image: AssetImage(googleLogo),
            width: 20.0,
          ),
          onPressed: () {},
          label: Text("Sign-In with Google"),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        width: double.infinity,
        child: OutlinedButton.icon(
          icon: Image(
            image: AssetImage(phoneLogo),
            width: 20.0,
          ),
          onPressed: () => Get.to(() => const OTPScreen()),
          label: Text("Sign-In with Phone Number"),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      TextButton(
        onPressed: () {},
        child: Text.rich(TextSpan(
            text: "Already have an Account? ",
            style: Theme.of(context).textTheme.bodyText1,
            children: const [
              TextSpan(
                text: "SignUp",
                style: TextStyle(color: Colors.blue),
              )
            ])),
      ),
    ]);
  }

  Form LoginForm() {
    return Form(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    labelText: tEmail,
                    hintText: tEmailhint,
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: tPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {}, child: const Text("Forgot Password?")),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(tLogin.toUpperCase()),
                ),
              )
            ])));
  }
}
