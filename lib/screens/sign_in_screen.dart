import 'package:flutter/material.dart';
import 'package:task_day2/widgets/custom_elevated_button.dart';
import 'package:task_day2/widgets/custom_social_media_button.dart';
import 'package:task_day2/widgets/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  double _sliderValue = 50;
  bool _isChecked = true;
  bool _isCheckedList = true;

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter an email";
    }
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (!emailRegex.hasMatch(value)) {
      return "Please enter a valid email";
    }

    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is Empty";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Welcome Back.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Color(0XFF2c2c2c),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Let’s sign in',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0XFF6b6b6b),
                    ),
                  ),
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: "Email",
                      label: 'Email',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0XFFcacaca),
                      ),
                      controller: _emailController,
                      validator: _validateEmail,
                    ),
                    CustomTextField(
                      hintText: "Password",
                      label: "Password",
                      obscureText: true,
                      isPassword: true,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0XFFcacaca),
                      ),
                      controller: _passwordController,
                      validator: _validatePassword,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Recover Password',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0XFFEC455F),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    '200',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                      color: Color(0XFF101010),
                    ),
                  ),
                  Text(
                    'USD',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 48,
                      color: Color(0XFF101010),
                    ),
                  ),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(
                  context,
                ).copyWith(trackHeight: 20, activeTrackColor: Colors.white),
                child: Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 100,
                  activeColor: Color(0XFF1098f7),
                  thumbColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0XFF1F81B9),
                    value: _isCheckedList,
                    onChanged: (bool? value) {
                      setState(() {
                        _isCheckedList = value ?? false;
                      });
                    },
                  ),
                  Text(
                    'Checkbox Label',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0XFF1F81B9),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  Switch(
                    activeTrackColor: Color(0XFF1f81b9),
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value;
                      });
                    },
                  ),
                  Text(
                    'Label',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0XFF1F81B9),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              CustomElevatedButton(text: 'Sign In'),
              SizedBox(height: 6),
              Row(
                spacing: 4,
                children: [
                  Text(
                    'ـــــــــــــــــــــــــــــــــــــ',
                    style: TextStyle(color: Color(0XFFcacaca)),
                  ),
                  Text(
                    'or continue with',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF969696),
                    ),
                  ),
                  Text(
                    'ـــــــــــــــــــــــــــــــــــــ',
                    style: TextStyle(color: Color(0XFF969696)),
                  ),
                ],
              ),
              SizedBox(height: 6),
              CustomSocialMediaButton(
                text: 'Continue with Google',
                image: 'assets/images/google 1.png',
              ),
              SizedBox(height: 4),
              CustomSocialMediaButton(
                text: 'Continue with Facebook',
                image: 'assets/images/image 8.png',
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Text(
                    'Don’t have an account?',

                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0XFF2C2C2C),
                    ),
                  ),
                  Text(
                    'Sign Up!',

                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0XFFEC455F),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
