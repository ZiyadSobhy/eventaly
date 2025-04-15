import 'package:eventaly/core/resources/assets_manger/assets_manger.dart';
import 'package:eventaly/core/resources/color_manger/color_manger.dart';
import 'package:eventaly/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../../../core/widgets/custom_text_botton.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset(ImageAssets.logo)),
          Expanded(
            flex: 4,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextFormField(text: 'Email', predixIcons: Icons.email),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    text: 'Password',
                    predixIcons: Icons.lock,
                    isSecure: secure,
                    suffixIcons:secure? Icons.visibility_off: Icons.visibility,
                    onClick: () {
                      secure = !secure;
                      setState(() {});

                    },
                  ),
                  SizedBox(height: 16.h),
                  CustomTextBottom(text: 'Forget Password?',),
                  SizedBox(height: 16.h),
                  const CustomElevatedButton(text: 'Login',),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      Text('Don’t Have Account ?',style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorMangers.black,
                      ),),
                      CustomTextBottom(text: 'Create Account',),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8.w),
                          color: ColorMangers.blue,
                          height: 1.h,

                        ),
                      ),
                      Text('or',style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: ColorMangers.blue,
                      ),),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8.w),
                          color: ColorMangers.blue,
                          height: 1.h,

                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 16.h),
                  CustomButton(),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
