import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutorial_app_bloc/pages/sign_in/widget/sign_in_widget.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(child: reusableText('Or use your email account to login')),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.only(left: 25.w,right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText('Email'),
                      SizedBox(height: 5.h,),
                      buildTextField('Enter your email address', 'Email','user'),
                      reusableText('password'),
                      SizedBox(height: 5.h,),
                      buildTextField('Enter your password', 'password','lock'),
                    ],
                  ),
                ),
                forgotPassword(),
                buildLoginAndRegButton('Log in','login'),
                buildLoginAndRegButton('Register','register'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

