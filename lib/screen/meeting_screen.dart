
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/jitzi_meeting.dart';
import 'package:zoom_clone/widget/home_meetingbutton.dart';

class MeetingScreen extends StatelessWidget {
   MeetingScreen({ Key? key, }) : super(key: key);

   final JitsiMeetMethods _jitsiMeetMethods=JitsiMeetMethods();
createNewMeeting()async{
  var random=Random();
  String roomName=(random.nextInt(10000000)+10000000).toString();
_jitsiMeetMethods.createMeeting(roomName: roomName, isAudioMuted: true, isVideoMuted: true);
}

joinMeeting(BuildContext context){
  Navigator.pushNamed(context, '/video-call');
}


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HomeMeetingButton(
            onPressed: () {createNewMeeting();},
            text: 'new Meeting',
            icon: Icons.videocam,
          ),
          HomeMeetingButton(
            onPressed: () {joinMeeting(context);},
            text: 'Join Meeting',
            icon: Icons.add_box_rounded,
          ),
          HomeMeetingButton(
            onPressed: () {},
            text: 'Kalender',
            icon: Icons.calendar_today,
          ),
          HomeMeetingButton(
              onPressed: () {},
              text: 'Share Screen',
              icon: Icons.arrow_upward),
        ],
      ),
      const Expanded(
        child: Center(
          child: Text('Am Meeting teilnehmen mit einen Klick'),
        ),
      ),
    ]);
  }
}
