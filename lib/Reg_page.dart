// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';
import 'dart:ffi';
import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/sec_page.dart';

class RegPage extends StatefulWidget {
  RegPage({Key? key  }) : super(key: key);
  

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  

  final name=TextEditingController();
  String get cname => name.text;
  final number=TextEditingController();
  String get cnum => number.text;
  final blood_group=TextEditingController();
  String get cbldgrp => blood_group.text;
  final address = TextEditingController();
  String get caddr => address.text;
  final hosp_name=TextEditingController();
  String get chosn => hosp_name.text;

  bool _validate=false;
  void add_data()async{
    final url = Uri.parse('https://zenanvibe.me/premkumar/add_data.php');
    var response = await http.post(url,body:{
      'name': cname,
      'number': cnum,
      'blood': cbldgrp,
      'address': caddr,
      'hosp_name': chosn,
    });
    
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  //final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;
    // return Form(
    //   key: _formkey,
    //   child: ,
    // );
    return Scaffold(
      backgroundColor: Colors.white,
       body:SingleChildScrollView(
        padding: const EdgeInsets.all(36.0),
      child:Center(
        child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 80,),
          
            
            
                Text(
                  "Don Blood",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color:Colors.red[500]
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow:[
                      BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset:Offset(1,1),
                      color:Colors.grey.withOpacity(0.2)
                  )
                  ]
                  ),
                  
                  
                   child:TextFormField(
                    controller: name,
                    
                    
                  
                  decoration: InputDecoration(
                    
                    prefixIcon: Icon(
                  Icons.account_circle,
                  color: Colors.red,
                ),
                // labelText: "Name",
                errorText: _validate ?'Please enter your name' : null,
                hintText: "Enter Your Name",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color:Colors.white,
                        width:1.0
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color:Colors.white,
                        width:1.0
                      )
                    ) 
                  )),
                ),
              
                SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow:[
                      BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset:Offset(1,1),
                      color:Colors.grey.withOpacity(0.2)
                  )
                  ]
                  ),
                  child: TextField(
                    controller: number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.red,
                ),
                // labelText: "Ph.Number",
                errorText: _validate ?'Please enter your ph.no' : null,
                hintText: "Enter you phone number",
                    
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color:Colors.white,
                        width:1.0
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color:Colors.white,
                        width:1.0
                      )
                    ) 
                  )),
                  
                ),
                SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow:[
                      BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset:Offset(1,1),
                      color:Colors.grey.withOpacity(0.2)
                  )
                  ]
                  ),
                  child: TextField(
                    controller: blood_group,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                  Icons.bloodtype,
                  color: Colors.red,
                ),
                // labelText: "Blood Group",
                errorText: _validate ?'Please enter your blood grp' : null,
                hintText: "Enter you Blood group",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color:Colors.white,
                        width:1.0
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color:Colors.white,
                        width:1.0
                      )
                    ) 
                  )),
                ),
                SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow:[
                      BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset:Offset(1,1),
                      color:Colors.grey.withOpacity(0.2)
                  )
                  ]
                  ),
                  child: TextField(
                    controller: address,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                  Icons.location_city,
                  color: Colors.red,
                ),
                // labelText: "Address",
                errorText: _validate ?'Please enter your address' : null,
                hintText: "Enter your address",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color:Colors.white,
                        width:1.0
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color:Colors.white,
                        width:1.0
                      )
                    ) 
                  )),
                ),
                SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow:[
                      BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset:Offset(1,1),
                      color:Colors.grey.withOpacity(0.2)
                  )
                  ]
                  ),
                  child: TextField(
                    controller: hosp_name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                  Icons.local_hospital,
                  color: Colors.red,
                ),
                // labelText: "Hospital name",
                errorText: _validate ?'Please enter your hos. name' : null,
                hintText: "Enter your hospital name",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color:Colors.white,
                        width:1.0
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color:Colors.white,
                        width:1.0
                      )
                    ) 
                  )),
                ),
                SizedBox(height: 60,),
                
                
                GestureDetector(
                  onTap: () {
                    
                    add_data();
                    
                    setState(() {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const AppPge()),);
                    name.text.isEmpty ? _validate = true : _validate = false;
                    

                  });
                  
                  
                    
                  },
                  child: Container(
                      width: w*0.5,
                    height: h*0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/img1.jpg"
                        ),
                        fit: BoxFit.cover
                      )
                    
                      
                    ),
                    
                    child:Center(
                      child: Text(
                        "Proceed",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:Colors.white,
                        ),
                      ),
                    )
                  ),
                ),
                
                // ElevatedButton(onPressed: () {
               
                  
                  
                  
                // }, 
                // child: Text('Proceed'),
                // ),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: 40,
                //   child: FlatButton(
                //     onPressed:(){
                //       if(_formkey.currentState!.validate()){
                //         print('Approved');
                //       }

                //     },
                //     child: Text("Proceed"),
                //     textColor: Colors.white,
                //     color: Colors.grey,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10)
                //     ),
                //   ),

                // )

                
                
                
                
            ])
            ),
       )
       
            );
            
    
          

  
      
    
    
  }
}