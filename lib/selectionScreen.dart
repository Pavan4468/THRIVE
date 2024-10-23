import 'package:flutter/material.dart';
import 'homePage.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF003F63),
      appBar: AppBar(
        title: Text(
          'Select Your Options',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF003F63),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Section title for singers
              Text(
                'Choose Singers',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Placeholder for singers list
              Container(
                height: 200, // Fixed height for the empty singers section
                color: Colors.grey[800], // Background color for visual indication
                child: Center(
                  child: Text(
                    'No Singers Available',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Section title for languages
              Text(
                'Choose a Language',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Placeholder for languages selection
              Container(
                height: 100, // Fixed height for the empty languages section
                color: Colors.grey[800], // Background color for visual indication
                child: Center(
                  child: Text(
                    'No Languages Available',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // "Next" button to navigate to HomePage
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xFF003F63),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    minimumSize: Size(200, 50),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
