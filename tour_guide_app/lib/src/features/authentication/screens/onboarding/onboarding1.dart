import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/constants/images_strings.dart';
import 'package:tour_guide_app/src/constants/text_strings.dart';
import 'package:tour_guide_app/src/features/authentication/screens/onboarding/onboarding2.dart';
import 'package:tour_guide_app/src/utils/buttons/button.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //background image
          Image.asset(onboarding1,
              height: size.height, width: size.width, fit: BoxFit.cover),
          //logo and the white box  main conatiner
          Container(
            padding: const EdgeInsets.all(20.0),
            //to pack vertically- logo->whie box->page index
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //white logo
                Image.asset(onboardLogo,
                    height: size.height * 0.25, width: size.width * 0.25),
                //white box
                Container(
                  width: size.width * 0.90,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //white box Ttile text
                      const Text(onboardBigText1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            wordSpacing: 3.0,
                            fontSize: 30,
                            height: 1.3,
                            fontFamily: "Poppins",
                          )),
                      const SizedBox(height: 10),
                      //white box Sub text
                      const Text(
                        onboardSmallText,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            fontFamily: "Poppins"),
                      ),
                      //Next button conatainer
                      Container(
                          margin: const EdgeInsetsDirectional.only(
                              top: 60.0, bottom: 5.0),
                          alignment: Alignment.bottomCenter,
                          //next button
                          child: ElevatedButton(
                            style: buttonPrimary,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Onboarding2()));
                            },
                            // "Next" text container
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                  top: 13.0, bottom: 15.0),
                              child: const Text("Next",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    letterSpacing: 2.0,
                                    fontSize: 15,
                                  )),
                            ),
                          ))
                    ],
                  ),
                ),

                //page indicator
                Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
