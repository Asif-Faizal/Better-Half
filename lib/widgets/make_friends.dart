import 'package:cryptog/widgets/stacked_avatar.dart';
import 'package:flutter/material.dart';

class FriendsCard extends StatelessWidget {
  const FriendsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: 350,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'lib/assets/running.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('lib/assets/1.jpg'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Keerthi Karthick',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Image.asset(
                                    'lib/assets/verified.png',
                                    height: 20,
                                    width: 20,
                                  )
                                ],
                              ),
                              Text('Athlete 🥇')
                            ],
                          ),
                          Expanded(
                            child: SizedBox(
                              width: 1,
                            ),
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.grey.withOpacity(0.3))),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.run_circle_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Run',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ))
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'There\'s a lot of room for improvement, you are always welcome 😍',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                            StackedAvatar()
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.grey.withOpacity(0.3))),
                              onPressed: () {},
                              child: Icon(
                                Icons.favorite_rounded,
                                color: Colors.white,
                              )),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.grey.withOpacity(0.3))),
                              onPressed: () {},
                              child: Icon(
                                Icons.message_rounded,
                                color: Colors.white,
                              )),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.grey.withOpacity(0.3))),
                              onPressed: () {},
                              child: Icon(
                                Icons.more_horiz_rounded,
                                color: Colors.white,
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
