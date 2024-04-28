import 'package:flutter/material.dart';

class StackedAvatar extends StatefulWidget {
  const StackedAvatar({super.key});

  @override
  State<StackedAvatar> createState() => _StackedAvatarState();
}

class _StackedAvatarState extends State<StackedAvatar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 130,
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/6.jpg'),
                ),
                Positioned(
                  left: 15,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/5.jpg'),
                  ),
                ),
                Positioned(
                  left: 30,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/4.jpg'),
                  ),
                ),
                Positioned(
                  left: 45,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/3.jpg'),
                  ),
                ),
                Positioned(
                  left: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/2.jpg'),
                  ),
                ),
                Positioned(
                  left: 75,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/1.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Text('+5 more')
        ],
      ),
    );
  }
}
