// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppPge extends StatelessWidget {
  const AppPge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
          Text(
            'Tracking Id',style: TextStyle(fontSize:30.0,fontWeight: FontWeight.bold,letterSpacing: 3),
            
          ),
          
      ),
        
      
      );
    
    
  }
}