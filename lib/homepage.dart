import 'package:flutter/material.dart';

import 'infoopage.dart';



class MyHomePage extends StatelessWidget {
 const MyHomePage({Key? key, required this.title}) : super(key: key);
 final String title;
 @override
 Widget build(BuildContext context) {
 return Scaffold(
        backgroundColor:Colors.white,
        
          body: Stack(
              children: [
                Image.asset(
                  'assets/Image/téléchargement.jpg',
                  width: 403,
                  height: 1946.9,
                  fit: BoxFit.fitHeight,
                ),
                Align(
                  alignment: const AlignmentDirectional(0.05, 1.06),
                  child: Image.asset(
                    'assets/Image/Online learning-rafiki (2).png',
                    width: 334.9,
                    height: 601.1,
                    fit: BoxFit.contain,
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(0.04, -0.74),
                  child: Text(
                    'E System for university',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFFE4EBEE),
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const Align(
                  alignment: AlignmentDirectional(0, -0.49),
                  child: Text(
                    'it\'s app to help Students , Teachers and proffesseurs\n in differnt function : cours ,marks,\ntimline, classes..ect.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.9, 0.93),
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       // ignore: deprecated_member_use
                       foregroundColor: Colors.white, primary: const Color(0x7A032971),
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    side: const BorderSide(color: Color(0x3204326C), width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                              ),
                   
                    
                    onPressed: () { Navigator.push(
                     context,
                          MaterialPageRoute(builder: (context) => const Infopage(title: 'INFO PAGE',)),
                             ); },
                    child: const Text("NEXT"),
                    
                  ),
                ),
              ],
            ),
          );
       

 }
}
