// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'homepage.dart';

class splash extends StatefulWidget {
  const splash ({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _navigatehome ();
  }

  _navigatehome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const MyHomePage(title: 'my homepage',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,
        
          body: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Image.asset(
                  'assets/Image/téléchargement.jpg' ,
                                width: 416.6,
                  height: 946.6,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Image.asset(
                  'assets/Image/Pngtreefeather handpainted feather pen.png',
                  width: 349.8,
                  height: 256.7,
                  fit: BoxFit.contain,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.06, 0.27),
                child: Image.asset(
                  'assets/Image/ESYSTEM.png',
                  width: 220.2,
                  height: 70.4,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
       
      
  
 );
  }
}