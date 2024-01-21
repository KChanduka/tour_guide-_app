import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/constants/images_strings.dart';
import 'package:tour_guide_app/src/constants/text_strings.dart';
import 'package:tour_guide_app/src/features/location/all_locations.dart';

class Successfull extends StatelessWidget {
  const Successfull({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //background image
          Image.asset(successfull,
              height: size.height, width: size.width, fit: BoxFit.cover),
          //logo and the white box  main conatiner
          Container(
            padding: const EdgeInsets.all(20.0),
            //to pack vertically- logo->whie box->page index
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //white logo
                Image.asset(onboardLogo,
                    height: size.height * 0.25, width: size.width * 0.25),

                //Main Text
                const Text(successfullMain,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        wordSpacing: 3.0,
                        fontSize: 35,
                        height: 1.3,
                        fontFamily: "Poppins",
                        color: Colors.white)),

                //sub text 1
                const Text(successfullsub1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        wordSpacing: 3.0,
                        fontSize: 26,
                        height: 1.3,
                        fontFamily: "Poppins",
                        color: Colors.white)),

                //sub text2
                const Text(successfullsub2,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        wordSpacing: 3.0,
                        fontSize: 12,
                        height: 1.3,
                        fontFamily: "Poppins",
                        color: Colors.white)),

                Container(
                    margin: const EdgeInsetsDirectional.only(
                        top: 60.0, bottom: 5.0),
                    alignment: Alignment.bottomCenter,
                    //next button
                    child: GestureDetector(
                      onTap: () {
                        //goto the all locations page\
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AllLocations()));
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 13.0, bottom: 15.0),
                        child: const Text(
                          "Lets Explore",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            letterSpacing: 2.0,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ))

                //page indicator
              ],
            ),
          ),
        ],
      ),
    );
  }
}
