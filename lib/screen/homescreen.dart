import 'package:flutter/material.dart';
import 'package:zoom_clone/Utilities/colors.dart';
import 'package:zoom_clone/screen/history_meetingscreen.dart';
import 'package:zoom_clone/screen/meeting_screen.dart';
import 'package:zoom_clone/widget/home_meetingbutton.dart';
import 'package:jitsi_meet/jitsi_meet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }


  List<Widget>pages=[
    MeetingScreen(),
   const HistoryMeetingScreen(),
   const Text('Contacts'),
   const Text('Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Meet & Chat'),
        backgroundColor: backgroundColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade800,
          onTap: onPageChanged,
          currentIndex: _page,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: 'Meet & Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_clock), label: 'Meetings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Contacts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'Settings'),
             ]),
      body: pages[_page],
    );
  }
}

