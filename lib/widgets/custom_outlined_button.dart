import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Color(0XFFffffff)),
        minimumSize: WidgetStateProperty.all(Size(382, 60)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Color(0XFF2C2C2C)),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,

        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 18,
          color: Color(0XFF2C2C2C),
        ),
      ),
    );
  }
}
