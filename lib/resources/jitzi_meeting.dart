


import 'package:jitsi_meet/jitsi_meet.dart';
import 'package:zoom_clone/resources/auth_methode.dart';

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();

  void createMeeting(
      {required String roomName,
      required bool isAudioMuted,
      required bool isVideoMuted,
      String username='',
      
      
      }) async {
    try{


    // Enable or disable any feature flag here
    // If feature flag are not provided, default values will be used
    // Full list of feature flags (and defaults) available in the README
    // ignore: unused_local_variable
    Map<FeatureFlagEnum, bool> featureFlags = {
      FeatureFlagEnum.WELCOME_PAGE_ENABLED: false,
    };
    String name;
    if(username.isEmpty){
name=_authMethods.user.displayName!;
    }else{
      name=username;
    }
  
   

      var options = JitsiMeetingOptions(room: roomName)
        ..userDisplayName = name
        ..userEmail = _authMethods.user.displayName
        ..userAvatarURL = _authMethods.user.photoURL // or .png
        
        ..audioMuted = isAudioMuted
        ..videoMuted = isVideoMuted;

      await JitsiMeet.joinMeeting(options);
    } catch (error) {
    
      print("error: $error");
    }
  }
}
