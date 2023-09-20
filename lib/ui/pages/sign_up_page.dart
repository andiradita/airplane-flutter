import 'dart:ffi';

import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
          margin: EdgeInsets.only(top: 30,),
          child: Text(
            'Join us and get \nyour next journey',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold
            ),
          )
      );
    }

    Widget inputSection(){
      Widget customInput(String label, String hintText, bool isObscure){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                obscureText: isObscure,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        defaultRadius
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      defaultRadius,
                    ),
                    borderSide: BorderSide(
                      color: kPrimaryColor
                    )
                  )
                ),
              )
            ],
          ),
        );
      }

      Widget submitButton(){
        return Container(
          margin : EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {

            },
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    defaultRadius
                ),
              )
            ),
            child: Text(
              'Get Started',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            customInput('Full Name', 'Your full name', false),
            customInput('Email Address', 'Your email address', false),
            customInput('Password', 'Your password', true),
            customInput('Hobby', 'Your Hobby', false),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton(){
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
