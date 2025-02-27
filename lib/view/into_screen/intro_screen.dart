import 'package:flutter/material.dart';
import 'package:fluxstroe/global_widgets/reusable_button.dart';
import 'package:fluxstroe/utils/constatns/color_constants.dart';
import 'package:fluxstroe/utils/constatns/image_constatns.dart';
import 'package:fluxstroe/view/signup_screen/signup_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 55),

              //title section
              Text(
                "Discover something new",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 17),
              Text(
                "Special new arrivals just for you",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 30),

              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 351,
                        width: double.infinity,
                        color: ColorConstants.dartGrey,
                      ),
                    ),
                    // carousel section
                    _buildCarrouselSection(context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarrouselSection(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 368,
          width: 261,
          child: PageView.builder(
            itemBuilder: (context, index) => Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: ColorConstants.lightGrey2,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(height: 349, ImageConstatns.intro1),
            ),
          ),
        ),
        SizedBox(height: 57),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: List.generate(
              3,
              (index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey,
                ),
                height: 10,
                width: 10,
              ),
            )),
        SizedBox(height: 27),

        // button
        ReusableButton(
          name: "Shop Now",
          onButtonPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ));
          },
        ),
      ],
    );
  }
}
