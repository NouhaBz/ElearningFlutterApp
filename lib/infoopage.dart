import 'package:flutter/material.dart';
import 'package:flutter_application/logsign.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class Infopage extends StatelessWidget {
 const Infopage({Key? key, required this.title}) : super(key: key);
 final String title;
 @override
 Widget build(BuildContext context) {
  
 final  controller = PageController(initialPage: 0);
 return Scaffold(
        backgroundColor:Colors.white,
        
          body: Stack(
               children: [
              Image.asset('assets/Image/téléchargement.jpg',
                width: 416,
                height: 858.6,
                fit: BoxFit.cover,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: 416,
                height: 858.6,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                      child: PageView(
                        controller: controller,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Stack(
                            children: [
                              
                              const Align(
                                alignment: AlignmentDirectional(0.04, -0.74),
                                child: Text(
                                  'FOR ADMINISTRATION',
                                  style:TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFE4EBEE),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                             const Align(
                                alignment: AlignmentDirectional(0, -0.49),
                                child: Text(
                                  'administration could add specialties ,levels,sections,groups ..could aloso manage students with thier marks and manage timeline for theachers and students , the impotant thing is \nto manage postes for inform\n students the new .',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                         fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-0.19, 1.69),
                                child: Image.asset(
                                  'assets/Image/Admin-rafiki (1).png',
                                  width: 334.9,
                                  height: 601.1,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-0.14, 1.57),
                                child: Image.asset(
                                  'assets/Image/Coding workshop-amico (1).png',
                                  width: 334.9,
                                  height: 601.1,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.04, -0.74),
                                child: Text(
                                  'FOR TEACHERS',
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
                                alignment:  AlignmentDirectional(0, -0.49),
                                child: Text(
                                  'teachers could manage courses TDs and TPs pdf or vedios they can informe the Students in way of postes else mange thier markes .',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-0.05, 1.64),
                                child: Image.asset(
                                  'assets/Image/Nerd-amico.png',
                                  width: 334.9,
                                  height: 601.1,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.04, -0.73),
                                child: Text(
                                  'FOR STUDENTS',
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
                                  'it\'s good way to informe the students about thier timeline thier\n groups , also to be inoformed \n about  thier marks had group \n chat betwin section and group.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.94, 0.98),
                                child:ElevatedButton(
                                   onPressed: () {
                                    Navigator.push(
                                            context,
                              MaterialPageRoute(builder: (context) => const LogSign()),
                             ); 
                             
                                 },
                                style: ElevatedButton.styleFrom(
                                     backgroundColor:const Color.fromARGB(111, 38, 81, 168),
                                     elevation: 5,
                                     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(8),
                                     ),
                                       ),
                                child: const Text(
                                        'Log In',
                                    style: TextStyle(
                                      fontSize: 10,
                                     fontFamily: 'Poppins',
                                  color: Colors.white,
                               ),
                                          ),
                                
                                        ),
                                  
                                 
                                ),
                            ],
                              ),
                            ],
                          ),
                          ),
                          Align(
                      alignment: const AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child:  SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: 32,
                      height: 12,
                      color:const  Color.fromARGB(255, 9, 91, 146),
                      rotationAngle: 180,
                      verticalOffset: -10,
                      borderRadius: BorderRadius.circular(24),
                      // dotBorder: DotBorder(
                      //   padding: 2,
                      //   width: 2,
                      //   color: Colors.indigo,
                      // ),
                    ),
                    dotDecoration: DotDecoration(
                      width: 24,
                      height: 12,
                      color: Colors.grey,
                      // dotBorder: DotBorder(
                      //   padding: 2,
                      //   width: 2,
                      //   color: Colors.grey,
                      // ),
                      // borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(2),
                      //     topRight: Radius.circular(16),
                      //     bottomLeft: Radius.circular(16),
                      //     bottomRight: Radius.circular(2)),
                      borderRadius: BorderRadius.circular(16),
                      verticalOffset: 0,
                    ),
                    spacing: 6.0,
                     // activeColorOverride: (i) => colors[i],
                    inActiveColorOverride: (i) => colors[i],
                      ),
                    ),
                   ),
                    ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              );
         

 }
}
const colors = [
  Color.fromARGB(155, 118, 199, 231),
  Color.fromARGB(155, 118, 199, 231),
   Color.fromARGB(155, 118, 199, 231),
];