import 'package:cryptog/widgets/make_friends.dart';
import 'package:cryptog/widgets/myappbar.dart';
import 'package:cryptog/widgets/soulmate.dart';
import 'package:cryptog/widgets/storytile.dart';
import 'package:curved_navigation_bar_with_label/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isMakeFriendsSelected = true;
  bool _isSoulmateSelected = false;
  final List<CurvedNavigationBarItem> _pages = [
    CurvedNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.black, size: 25), label: 'Home'),
    CurvedNavigationBarItem(
        icon: Icon(Icons.navigation_rounded, color: Colors.black, size: 25),
        label: "Search"),
    CurvedNavigationBarItem(
        icon: Icon(Icons.add, color: Colors.black, size: 25), label: "Add"),
    CurvedNavigationBarItem(
        icon: Icon(Icons.person_4_rounded, color: Colors.black, size: 25),
        label: "Connections"),
    CurvedNavigationBarItem(
        icon: Icon(Icons.message_rounded, color: Colors.black, size: 15),
        label: "Messeges"),
  ];

  bool _showTextField = true;

  final List<Map<String, dynamic>> _stories = [
    {'name': 'My Tale', 'avatar': 'lib/assets/1.jpg'},
    {'name': 'Jane Smith', 'avatar': 'lib/assets/2.jpg'},
    {'name': 'Bob Johnson', 'avatar': 'lib/assets/3.jpg'},
    {'name': 'Alice Brown', 'avatar': 'lib/assets/4.jpg'},
    {'name': 'Charlie Davis', 'avatar': 'lib/assets/5.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
          color: Colors.black,
          buttonLabelColor: Colors.black,
          backgroundColor: Colors.pink.shade100,
          buttonBackgroundColor: Colors.pink,
          items: _pages),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          MyAppBar(showTextField: _showTextField),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.pink,
              thickness: 0.3,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  'Status',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: _stories.length,
                  itemBuilder: (context, index) {
                    return storyTile(
                      index: index,
                      data: _stories[index],
                    );
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.pink,
              thickness: 0.3,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isMakeFriendsSelected = !_isMakeFriendsSelected;
                              _isSoulmateSelected = false;
                            });
                          },
                          child: Text(
                            'Make friends',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: _isMakeFriendsSelected
                                  ? FontWeight.bold
                                  : FontWeight.w400,
                              color: _isMakeFriendsSelected
                                  ? Colors.pink
                                  : Colors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isSoulmateSelected = !_isSoulmateSelected;
                              _isMakeFriendsSelected = false;
                            });
                          },
                          child: Text(
                            'Soulmate',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: _isSoulmateSelected
                                  ? FontWeight.bold
                                  : FontWeight.w400,
                              color: _isSoulmateSelected
                                  ? Colors.pink
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          SliverToBoxAdapter(
            child: Divider(
              color: Colors.pink,
              thickness: 0.3,
            ),
          ),
          SliverToBoxAdapter(
              child: _isSoulmateSelected
                  ? Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [SoulmateCard(), SoulmateCard()],
                      ))
                  : Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [FriendsCard(), FriendsCard()],
                      )))
        ],
        controller: _scrollController,
      ),
    );
  }

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        setState(() {
          _showTextField = _scrollController.offset <= 0;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
