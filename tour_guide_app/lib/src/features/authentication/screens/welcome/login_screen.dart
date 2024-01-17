import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/constants/colors.dart';
import 'package:tour_guide_app/src/constants/images_strings.dart';
import 'package:tour_guide_app/src/constants/sizes.dart';
import 'package:tour_guide_app/src/constants/text_strings.dart';
import 'package:tour_guide_app/src/utils/buttons/button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          width: size.width,
          height: size.height,
          // clipBehavior: Clip.none,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //blue logo
               Image(
                image: const AssetImage(loginLogo),
                width: size.width * 0.25,
                height: size.height * 0.20,
              ),
              //welcome text
              
              const Text(
                loginMain,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              //sub text
              const Text(
                loginSub,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
               SizedBox(height: size.height*0.025),
              //form container
              Form(
                child: Container(
                  padding:  EdgeInsets.symmetric(horizontal: size.width*0.05, vertical: size.height*0.03),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                      TextField(
                          decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Enter your password",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(inputBoxBR)),
                              suffixIcon: const IconButton(
                                onPressed: null,
                                icon: Icon(Icons.remove_red_eye_sharp),
                              ))),
                      //forgot passwword text button
                      Container(
                        width: double.infinity,
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                            onPressed: () => "",
                            child: const Text("Forgot your password?")),
                      ),
                      //login button
                      Container(
                          margin: const EdgeInsetsDirectional.only(
                              top: 10.0, bottom: 5.0),
                          alignment: Alignment.bottomCenter,
                          //login button
                          child: ElevatedButton(
                            style: buttonPrimary,
                            onPressed: () => " whatever",
                            // "Login" text container
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  top: 13.0, bottom: 15.0),
                              child: const Text("Login",
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
              // or Loing wiht
              const SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Opacity(
                          opacity: 0.8,
                          child: Text("Or login with",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: textSizeRegular,
                              )))
                    ],
                  )),
              //facebook gmail apple login
              Container(
                width: double.infinity,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //facebook buttton
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(buttonPrimaryBR)),
                        child: OutlinedButton.icon(
                          onPressed: () => "",
                          icon:  Image(image:const AssetImage(facebook),width: size.width*0.05,),
                          label: const Text(
                            "Facebook",
                            style: TextStyle(
                                fontSize: textSizeSmall, color: textPrimary),
                          ),
                        ),
                      ),

                      //gmail button
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: size.width*0.02),
                        child: OutlinedButton.icon(
                          onPressed: () => "",
                          icon: Image(image:const AssetImage(google),width: size.width*0.05,),
                          label: const Text(
                            "Gmail",
                            style: TextStyle(
                                fontSize: textSizeSmall, color: textPrimary),
                          ),
                        ),
                      ),

                      //apple button
                       Container(
                        child: OutlinedButton.icon(
                          onPressed: () => "",
                          icon: Image(image:const AssetImage(apple),width: size.width*0.05,),
                          label: const Text(
                            "Apple",
                            style: TextStyle(
                                fontSize: textSizeSmall, color: textPrimary),
                          ),
                        ),
                      ),

                    ]),
              ),
              //create account
              Container(
                  width: size.width,
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Doesn't have account on disccover?",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: textSizeSmall,
                          )),
                      //create account button
                      TextButton(
                        onPressed: () => "",
                        child: const Text("Create Account",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: textSizeSmall,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      )
                    ],
                  ))
            ],
          )), 
      ) 
    );
  }
}
