import 'package:flutter/material.dart';
import 'package:fluxstroe/global_widgets/reusable_button.dart';
import 'package:fluxstroe/utils/constatns/color_constants.dart';
import 'package:fluxstroe/utils/constatns/image_constatns.dart';
import 'package:fluxstroe/view/into_screen/intro_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withAlpha(150),
              BlendMode.darken,
            ),
            image: AssetImage(ImageConstatns.welcomeBg),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Welcome to FluxStore!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: ColorConstants.white),
            ),
            SizedBox(height: 13),
            Text(
              "The home for a fashionista",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: ColorConstants.white),
            ),
            SizedBox(height: 60),
            ReusableButton(
              alpha: 160,
              name: "Get Started",
              onButtonPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntroScreen(),
                    ));
              },
            ),
            SizedBox(height: 103),
          ],
        ),
      ),
    );
  }
}
