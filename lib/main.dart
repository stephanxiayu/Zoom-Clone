import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/Utilities/colors.dart';
import 'package:zoom_clone/resources/auth_methode.dart';
import 'package:zoom_clone/screen/homescreen.dart';
import 'package:zoom_clone/screen/login_screen.dart';
import 'package:zoom_clone/screen/video_call_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  
      theme: ThemeData.dark().copyWith(
     scaffoldBackgroundColor: backgroundColor
     
      ),
      routes: {
        '/home':(context) => const HomeScreen(),
        '/login':(context)=>const LoginScreen(),
         '/video-call':(context)=>const VideoCallScreen()},
      home: StreamBuilder(stream: AuthMethods().authChanges,
      builder: (context, snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(),);
          
        }if(snapshot.hasData){
          return const HomeScreen();
        }return const LoginScreen();
      },
      
      )
    );
  }
}


