import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/constants/colors.dart';
import 'package:tour_guide_app/src/constants/images_strings.dart';
import 'package:tour_guide_app/src/constants/sizes.dart';
import 'package:tour_guide_app/src/constants/text_strings.dart';
import 'package:tour_guide_app/src/features/authentication/screens/welcome/create_new_password_screen.dart';
import 'package:tour_guide_app/src/utils/buttons/button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          width: size.width,
          height: size.height,
          // clipBehavior: Clip.none,
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 20, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Image(
                            image: const AssetImage(loginLogo),
                            width: size.width * 0.25,
                            height: size.height * 0.15,
                          )),

                      //Main text
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          forgotPasswordMain,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),

                      SizedBox(
                        height: size.height * 0.02,
                      ),

                      //Sub Text
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            forgotPasswordSub,
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          )),
                    ],
                  )),

              //blue logo

              //sub text

              SizedBox(height: size.height * 0.025),
              //form container
              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //email input
                      TextField(
                        decoration: InputDecoration(
                            labelText: "E-mail",
                            hintText: "Enter your email",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(inputBoxBR))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //password input
                      Container(
                        width: double.infinity,
                        alignment: Alignment.bottomLeft,
                        child: TextButton(
                            onPressed: () => "",
                            child: const Text("Reset with phone number")),
                      ),
                      //request button
                      Container(
                          margin: const EdgeInsetsDirectional.only(
                              top: 4.0, bottom: 5.0),
                          alignment: Alignment.bottomCenter,
                          //login button
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CreatePassword()));
                            },
                            style: buttonPrimary,
                            // "Login" text container
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  top: 13.0, bottom: 15.0),
                              child: const Text("Request code",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    letterSpacing: 2.0,
                                    fontSize: 15,
                                  )),
                            ),
                          )),
                    ],
                  ),
                ),
              ),

              //create account
            ],
          )),
    ));
  }
}
