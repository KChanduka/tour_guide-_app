import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/constants/colors.dart';
import 'package:tour_guide_app/src/constants/images_strings.dart';
import 'package:tour_guide_app/src/constants/sizes.dart';
import 'package:tour_guide_app/src/constants/text_strings.dart';
import 'package:tour_guide_app/src/features/authentication/screens/welcome/succesful_screen.dart';
import 'package:tour_guide_app/src/features/booking/after_booking.dart';
import 'package:tour_guide_app/src/utils/buttons/button.dart';

class DetailBooking extends StatefulWidget {
  final String name;
  final String location;
  final String image;
  final String description;

  DetailBooking(
      {super.key,
      required this.name,
      required this.location,
      required this.image,
      required this.description});

  @override
  State<DetailBooking> createState() => _DetailBookingState();
}

class _DetailBookingState extends State<DetailBooking> {
  final TextEditingController _guestname = TextEditingController();

  final TextEditingController _numberofGuests = TextEditingController();

  final TextEditingController _phoneNumber = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _guestname.dispose();
    _numberofGuests.dispose();
    _phoneNumber.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text(
            "Booking Details",
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Successfull(),
                  ),
                );
              },
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //blue logo
                //  Image(
                //   image: const AssetImage(loginLogo),
                //   width: size.width * 0.25,
                //   height: size.height * 0.15,
                // ),
                //welcome text

                //sub text
                const Text(
                  "Please fill in the details below to complete your booking",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                SizedBox(height: size.height * 0.025),
                //form container
                Form(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                        vertical: size.height * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //location data display
                        //name
                        Text(
                          widget.name!,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        //location
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          widget.location!,
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        //description
                        Text(
                          widget.description!,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          height: size.height * 0.2,
                          width: size.width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: NetworkImage(widget.image!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        //guest name
                        TextField(
                          controller: _guestname,
                          decoration: InputDecoration(
                              labelText: "Guest Name",
                              hintText: "Enter the guest name",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(inputBoxBR))),
                        ),

                        SizedBox(
                          height: size.height * 0.02,
                        ),

                        //Guest number
                        TextField(
                          controller: _numberofGuests,
                          decoration: InputDecoration(
                              labelText: "Guest Number",
                              hintText: "Enter the number",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(inputBoxBR))),
                        ),

                        SizedBox(
                          height: size.height * 0.02,
                        ),

                        //phone
                        TextField(
                          controller: _phoneNumber,
                          decoration: InputDecoration(
                              labelText: "Phone number",
                              hintText: "Enter your Phone number",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(inputBoxBR))),
                        ),

                        SizedBox(
                          height: size.height * 0.02,
                        ),

                        //password input

                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        //next button
                        Container(
                            margin: const EdgeInsetsDirectional.only(
                                top: 4.0, bottom: 5.0),
                            alignment: Alignment.bottomCenter,
                            //login button
                            child: ElevatedButton(
                              style: buttonPrimary,
                              onPressed: () async {
                                try {
                                  // Store the booking data in the Firestore collection "bookings"
                                  await FirebaseFirestore.instance
                                      .collection('bookings')
                                      .add({
                                    'name': widget.name,
                                    'location': widget.location,
                                    'image': widget.image,
                                    'description': widget.description,
                                    'guestName': _guestname.text,
                                    'numberOfGuests': _numberofGuests.text,
                                    'phoneNumber': _phoneNumber.text,
                                    // Add any other fields you want to store in the "bookings" collection
                                  });

                                  // Navigate to the BookingSuccessful page
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const BookingSuccesfull(),
                                    ),
                                  );
                                } catch (e) {
                                  print(e);
                                }
                              },
                              // "Login" text container
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
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
