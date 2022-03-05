

import 'package:flutter/material.dart';
import 'package:zoom_clone/colors.dart';

class CostumButton extends StatelessWidget {
  final String text;
  const CostumButton({ Key? key, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {},
          style:ElevatedButton.styleFrom(primary: buttonColor,
           minimumSize:const Size(double.infinity, 50) ) ,
  
        child: Text(text, style:const TextStyle(fontSize: 17),),
      ),
    );
  }
}