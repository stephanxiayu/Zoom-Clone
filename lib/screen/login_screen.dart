
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methode.dart';
import 'package:zoom_clone/widget/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

final AuthMethods _authMethods=AuthMethods();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children:  [
      const    Text('Start Meeting', style: TextStyle(fontSize:24, fontWeight: FontWeight.bold ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Image.asset('lib/assets/onboarding.jpg'),
          ),
          CostumButton(text: 'Google SignIn', onPressed: ()async{
                bool res=await _authMethods.signInWithGoogle(context);
                if(res){
                  Navigator.pushNamed(context, '/home');
                }
          },)
        ],),
    );
  }
}