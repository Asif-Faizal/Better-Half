import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      margin: EdgeInsets.zero, // Remove padding
      color: Colors.white,
      elevation: 10,
      shadowColor: Colors.pink,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        height: 65, // Increased height
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
              ),
              child: IconButton(
                icon: Icon(Icons.search, color: Colors.pinkAccent),
                onPressed: () {
                  // Handle search button press
                },
              ),
            ),
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.grey), // Text color black
                decoration: InputDecoration(
                  filled: true, // Fill the background
                  fillColor: Colors.white, // Background color white
                  border: InputBorder.none,
                  hintText: 'Search your partner',
                ),
              ),
            ),
            Container(
              height: double.infinity,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.pink.shade400,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
              ),
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.filter_list_alt, color: Colors.white),
                  onPressed: () {
                    // Handle search button press
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
