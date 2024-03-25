import 'dart:async';


import 'package:flutter/material.dart';

import 'home.dart';

class Spscreen extends StatefulWidget {
  const Spscreen({super.key});

  @override
  State<Spscreen> createState() => _SpscreenState();
}

class _SpscreenState extends State<Spscreen> {
  void splash() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const Homepage()));
    });
  }
  void initState(){
    setState(() {
      splash();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/splashscreen.jpg'),
              fit: BoxFit.cover,
              opacity: 0.7
            ),
          ),
        child: const Material(
          color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65,horizontal: 25),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Welcome To Citi Guide",textAlign: TextAlign.center,style: TextStyle(color: Colors.black54,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                   ),
                  ),
                SizedBox(height: 2,),
                Text("Take only memories, leave only footprints",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


