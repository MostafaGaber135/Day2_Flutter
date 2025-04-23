import 'package:flutter/material.dart';

class CustomSocialMediaButton extends StatelessWidget {
  const CustomSocialMediaButton({super.key, required this.text, required this.image});
final String text,image;
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
      child: Row(
        spacing: 50,
        children: [
          Image.asset(image,),
          Text(
            text,
          
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color(0XFF959595),
            ),
          ),
        ],
      ),
    );
  }
}
