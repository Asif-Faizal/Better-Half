import 'package:flutter/material.dart';

class storyTile extends StatelessWidget {
  const storyTile({
    super.key,
    required this.index,
    required this.data,
  });
  final int index;
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(color: Colors.pink, width: 2),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(data['avatar']),
                    radius: 30,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                data['name'],
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          if (index == 0)
            Positioned(
                bottom: 40,
                right: 0,
                child: Container(
                  child: Icon(
                    Icons.add,
                    size: 12,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink),
                  height: 15,
                  width: 15,
                )),
        ],
      ),
    );
  }
}
