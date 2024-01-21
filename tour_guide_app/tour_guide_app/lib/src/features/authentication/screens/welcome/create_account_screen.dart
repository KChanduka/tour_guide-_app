import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/constants/colors.dart';
import 'package:tour_guide_app/src/constants/images_strings.dart';
import 'package:tour_guide_app/src/constants/sizes.dart';
import 'package:tour_guide_app/src/constants/text_strings.dart';
import 'package:tour_guide_app/src/features/authentication/screens/welcome/succesful_screen.dart';
import 'package:tour_guide_app/src/utils/buttons/button.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  //test editing controlers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
  }

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
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //blue logo
              //  Image(
              //   image: const AssetImage(loginLogo),
              //   width: size.width * 0.25,
              //   height: size.height * 0.15,
              // ),
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
              SizedBox(height: size.height * 0.025),
              //form container
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //first name
                    TextField(
                      controller: _firstNameController,
                      decoration: InputDecoration(
                          labelText: "First Name",
                          hintText: "Enter your First Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(inputBoxBR))),
                    ),

                    SizedBox(
                      height: size.height * 0.02,
                    ),

                    //Last name
                    TextField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                          labelText: "Last Name",
                          hintText: "Enter your Last Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(inputBoxBR))),
                    ),

                    SizedBox(
                      height: size.height * 0.02,
                    ),

                    //Age
                    TextField(
                      controller: _ageController,
                      decoration: InputDecoration(
                          labelText: "Age",
                          hintText: "Enter your Age",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(inputBoxBR))),
                    ),

                    SizedBox(
                      height: size.height * 0.02,
                    ),

                    //Email
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(inputBoxBR))),
                    ),

                    SizedBox(
                      height: size.height * 0.02,
                    ),

                    //password input
                    TextField(
                        controller: _passwordController,
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
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) => "accept",
                          ),
                          TextButton(
                              onPressed: () => " terms and conditions",
                              child: Text("I accept terms and conditions"))
                        ],
                      ),
                    ),
                    //login button
                    Container(
                        margin: const EdgeInsetsDirectional.only(
                            top: 4.0, bottom: 5.0),
                        alignment: Alignment.bottomCenter,
                        //login button
                        child: ElevatedButton(
                          style: buttonPrimary,
                          onPressed: () async {
                            try {
                              await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: _emailController.text,
                                      password: _passwordController.text)
                                  .then((value) => print("Account created"))
                                  .catchError(
                                    (error) => print(
                                        "Failed to create account: $error"),
                                  );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Successfull(),
                                ),
                              );
                            } catch (e) {
                              print(e.toString());
                            }
                          },
                          // "Login" text container
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            padding:
                                const EdgeInsets.only(top: 13.0, bottom: 15.0),
                            child: const Text("Create Account",
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

              //create account
              Container(
                  width: size.width,
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: textSizeSmall,
                          )),
                      //create account button
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Go Back",
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
    ));
  }
}
