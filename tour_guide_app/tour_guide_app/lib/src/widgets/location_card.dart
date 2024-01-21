import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace 'locations' with your Firestore collection name
      future: FirebaseFirestore.instance.collection('locations').get(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Display a loading indicator while fetching data
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          // Process the fetched data and display it in your UI
          List<DocumentSnapshot> documents = snapshot.data!.docs;

          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> data =
                  documents[index].data() as Map<String, dynamic>;

              // Extracting data from the document
              String locationName = data['name'];
              String locationDescription = data['description'];
              String locationImage = data['image'];
              String locationLocation = data['location'];
              String locationPrice = data['price'];
              String locationReviews = data['reviews'];

              // Display the data in your UI
              return Card(
                child: Column(
                  children: [
                    Image.network(
                      locationImage,
                      width: double.infinity,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(locationName),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(locationLocation),
                          Text('Price: \$${locationPrice}'),
                          Text('Reviews: ${locationReviews}'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        locationDescription,
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}
