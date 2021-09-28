import 'package:astro/screens/ask_question_screen.dart';
import 'package:astro/screens/home_screen.dart';
import 'package:astro/screens/report_screen.dart';
import 'package:astro/screens/talk_to_astrologer_screen.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  late List<Map<String, dynamic>> _pages;
  int _selectedIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print(_pages[index]);
  }

  @override
  void initState() {
    _pages = [
      {
        'page': Home(),
        'title': 'Home',
      },
      {
        'page': TalkToAstrologerScreen(),
        'title': 'Talk to Astrologer',
      },
      {
        'page': AskQuesiontScreen(),
        'title': 'Ask A Question',
      },
      {
        'page': ReportScreen(),
        'title': 'Report',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/astro-logo.png',
          fit: BoxFit.fitHeight,
          height: 45,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      drawer: Drawer(),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
        onTap: _selectPage,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer_outlined),
            label: 'Talk to Astrologer',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.quickreply_outlined,
            ),
            label: 'Ask Question',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.broken_image_outlined,
            ),
            label: 'Reports',
          ),
        ],
      ),
    );
  }
}
