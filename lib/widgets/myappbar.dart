import 'package:cryptog/widgets/textfield.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    required bool showTextField,
  }) : _showTextField = showTextField;

  final bool _showTextField;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: AssetImage('lib/assets/1.jpg'),
          radius: 100,
        ),
      ),
      backgroundColor: Colors.white,
      expandedHeight: 150,
      titleSpacing: 0,
      pinned: true,
      floating: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications_active_rounded,
                size: 20,
                color: Colors.pinkAccent,
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black, width: 0.5)),
          ),
        )
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Riya Williams',
            style: TextStyle(
                color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'welcome',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
      bottom: _showTextField
          ? PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: MyTextField()),
            )
          : null,
    );
  }
}
