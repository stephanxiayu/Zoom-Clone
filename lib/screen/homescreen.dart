import 'package:flutter/material.dart';
import 'package:zoom_clone/Utilities/colors.dart';
import 'package:zoom_clone/widget/home_meetingbutton.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      elevation: 0,
      title: const Text('Meet & Chat'),
      backgroundColor: backgroundColor,
    ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade800,
          onTap: onPageChanged,
          currentIndex: _page,
          type:BottomNavigationBarType.fixed ,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: 'Meet & Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_clock), label: 'Meetings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Contacts'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'Settings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: 'Meet& Chat'),
          ]),
          body: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              HomeMeetingButton(onPressed: (){},
              text: 'new Meeting',
              icon: Icons.videocam,
              ),
               HomeMeetingButton(onPressed: (){},
              text: 'Join Meeting',
              icon: Icons.add_box_rounded,
              ),
               HomeMeetingButton(onPressed: (){},
              text: 'Kalender',
              icon: Icons.calendar_today,
              
              ),
               HomeMeetingButton(onPressed: (){},
              text: 'Share Screen',
              icon: Icons.arrow_upward
              ),
            ],),
            const Expanded(child: Center(child:Text('Am Meeting teilnehmen mit einen Klick') ,),),
          ]),
    );
  }
}
