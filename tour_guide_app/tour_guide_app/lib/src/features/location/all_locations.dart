import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tour_guide_app/src/features/authentication/screens/splash_screen/splash_sceen.dart';
import 'package:tour_guide_app/src/features/booking/booking_oage.dart';

class AllLocations extends StatelessWidget {
  const AllLocations({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const SplashScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          'All Locations',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('locations').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<DocumentSnapshot> documents = snapshot.data!.docs;

            if (documents.isEmpty) {
              return Center(child: Text('No data found.'));
            }

            return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (BuildContext context, int index) {
                Map<String, dynamic> data =
                    documents[index].data() as Map<String, dynamic>;

                String name = data['name'] ?? 'N/A';
                String description = data['description'] ?? 'N/A';
                String image = data['image'] ?? '';
                String location = data['location'] ?? 'N/A';
                String price = data['price'] ?? 'N/A';
                String reviews = data['reviews'] ?? 'N/A';
                String category = data['category'] ?? 'N/A';

                return GestureDetector(
                  onTap: () {
                    //go the the booking page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailBooking(
                          name: name,
                          description: description,
                          image: image,
                          location: location,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 1.0,
                    margin: EdgeInsets.all(12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          child: Image.network(
                            image,
                            fit: BoxFit.cover,
                            height: 200.0,
                            width: double.infinity,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                description.substring(0, 100) + '...',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Location: $location'),
                                  Text('Price: $price'),
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Text('Reviews: $reviews'),
                              SizedBox(height: 8.0),
                              Text('Category: $category'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
