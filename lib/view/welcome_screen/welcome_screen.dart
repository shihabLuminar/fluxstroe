import 'package:flutter/material.dart';
import 'package:fluxstroe/utils/constatns/color_constants.dart';
import 'package:fluxstroe/utils/constatns/image_constatns.dart';

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
              "Welcome to GemStore!",
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 53, vertical: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.white, width: 1.18),
                  borderRadius: BorderRadius.circular(29.5),
                  color: ColorConstants.white.withAlpha(50)),
              child: Text(
                "Get Started",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: ColorConstants.white),
              ),
            ),
            SizedBox(height: 103),
          ],
        ),
      ),
    );
  }
}
