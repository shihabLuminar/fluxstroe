import 'package:flutter/material.dart';
import 'package:fluxstroe/global_widgets/custom_text_field.dart';
import 'package:fluxstroe/global_widgets/reusable_button.dart';
import 'package:fluxstroe/utils/constatns/color_constants.dart';
import 'package:fluxstroe/view/bottom_nav_bar_screen/bottom_nav_bar_screen.dart';
import 'package:fluxstroe/view/signup_screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 58),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Create\nYour Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    height: 2,
                  ),
                ),
              ),
              CustomTextField(
                controller: emailController,
                hintText: "Email Address",
              ),
              CustomTextField(
                bottomPadding: 28,
                controller: passwordController,
                hintText: "Password",
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: Text("Forgot Password?"))),
              SizedBox(height: 35),
              ReusableButton(
                backgroundColor: ColorConstants.black,
                textColor: ColorConstants.white,
                name: "Log in",
                onButtonPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBarScreen(),
                      ));
                },
              ),
              SizedBox(height: 28),
              Text(
                "or sign up with",
                style: TextStyle(
                  fontSize: 12,
                  height: 2,
                ),
              ),
              SizedBox(height: 28),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: 21,
                      child: Icon(
                        Icons.facebook,
                        size: 22,
                      )),
                  CircleAvatar(
                      radius: 21,
                      child: Icon(
                        Icons.facebook,
                        size: 22,
                      )),
                  CircleAvatar(
                      radius: 21,
                      child: Icon(
                        Icons.facebook,
                        size: 22,
                      )),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account? "),
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ));
                      },
                      child: Text("Sign Up"))
                ],
              ),
              SizedBox(
                height: 63,
              )
            ],
          ),
        ),
      ),
    );
  }
}
