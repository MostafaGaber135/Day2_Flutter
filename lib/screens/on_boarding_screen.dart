import 'package:flutter/material.dart';
import 'package:task_day2/widgets/custom_elevated_button.dart';
import 'package:task_day2/widgets/custom_outlined_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(54),
              child: Image.asset(
                'assets/images/Group.png',
                height: 315.45,
                width: 308.3,
              ),
            ),
            Text(
              'Enterprise Team Management',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0XFF2C2C2C),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'With an extensive menu prepared by talented chefs, fresh quality food.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0XFF999999),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            CustomElevatedButton(text: 'Sign Up'),
            SizedBox(height: 20),
            CustomOutlinedButton(text: 'Already have an account'),
          ],
        ),
      ),
    );
  }
}
