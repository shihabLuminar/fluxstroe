import 'package:flutter/material.dart';
import 'package:fluxstroe/global_widgets/custom_text_field.dart';
import 'package:fluxstroe/global_widgets/reusable_button.dart';
import 'package:fluxstroe/utils/constatns/color_constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
                controller: nameController,
                hintText: "Enter your name",
              ),
              CustomTextField(
                controller: emailController,
                hintText: "Email Address",
              ),
              CustomTextField(
                controller: passwordController,
                hintText: "Password",
              ),
              CustomTextField(
                bottomPadding: 40,
                controller: confirmPasswordController,
                hintText: "Confirm Password",
              ),
              ReusableButton(
                backgroundColor: ColorConstants.black,
                textColor: ColorConstants.white,
                name: "Sign Up",
                onButtonPressed: () {},
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
              SizedBox(height: 40),
              Text("Already have account? Log In")
            ],
          ),
        ),
      ),
    );
  }
}
