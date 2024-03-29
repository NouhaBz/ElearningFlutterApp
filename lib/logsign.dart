

import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/home.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_validator/email_validator.dart';
import 'models/users.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'navmenu/menuDash.dart';
class LogSign extends StatefulWidget {
  const LogSign({Key? key}) : super(key: key);

  @override
  State<LogSign> createState() => _LogSignState();
}

class _LogSignState extends State<LogSign> {
  final _formKey = GlobalKey<FormState>();
  
  late String _firstname;
  late String _email;
  late String _password;








  // ignore: non_constant_identifier_names
  final Econtroller = TextEditingController();
  // ignore: non_constant_identifier_names
  final Pcontroller = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();

   bool _passwordVisible = false;
  bool _isValid = false;



 var jsonResponse;
  bool isLoading = false;









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView( 
        
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: const [],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Image.asset(
                'assets/Image/téléchargement (2).jpg',
                width: 402.2,
                height: 1100.4,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.08, -0.73),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 300, 20, 0),
                child: Container(
                  width: 500,
                  height: 800,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(122, 224, 227, 231),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  alignment: const AlignmentDirectional(0, 0),
                  child: Form(
                    key:_formKey,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                      child: DefaultTabController(
                        length: 2,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            const TabBar(
                              isScrollable: true,
                              labelColor: Color(0xFF202020),
                              labelPadding:
                                 EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              labelStyle:TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                                 
                              indicatorColor: Color(0xFF202020),
                              tabs: [
                                Tab(
                                  text:( 'Sign In'),
                                ),
                                Tab(
                                  text: 'Sign Up',
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                   
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24, 24, 24, 24),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 0),
                                          child: TextFormField(
                                            
                                             onSaved: (value) => _email = value!,
                                            controller:Econtroller,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Email Address',
                                              labelStyle:
                                                  const TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                        color: Color.fromARGB(255, 75, 73, 73)
                                                      ),
                                              hintText: 'Enter your email...',
                                              hintStyle: const TextStyle(
                                                fontSize: 10,
                                                    fontFamily: 'Poppins',
                                                    color:Color.fromARGB(172, 158, 158, 158),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.grey,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0x75FBFBFB),
                                              contentPadding:
                                                 const EdgeInsetsDirectional
                                                      .fromSTEB(20, 24, 20, 24),
                                            ),
                                            style: const TextStyle(
                                              fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0F1113),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            maxLines: null,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: TextFormField(
                                           
                                             onSaved: (value) => _password = value!,

                                            controller:Pcontroller,
                                            obscureText: _passwordVisible,
                                            decoration: InputDecoration(
                                              labelText: 'Password',
                                              labelStyle:
                                               const  TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                         color: Color.fromARGB(255, 75, 73, 73)
                                                      ),
                                              hintText:
                                                  'Enter your password...',
                                              hintStyle:
                                                 const TextStyle(
                                                  fontSize: 10,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.grey,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color.fromARGB(0, 204, 196, 196),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor:const Color(0x87FFFFFF),
                                              contentPadding:
                                               const  EdgeInsetsDirectional
                                                      .fromSTEB(20, 24, 20, 24),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _passwordVisible =!_passwordVisible,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _passwordVisible
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Colors.green,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            style: const TextStyle(
                                              fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0F1113),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                           
                                            
                                          ),
                                        ),
                                           Padding(
                                       padding: const EdgeInsetsDirectional.fromSTEB(0, 54, 0, 0),
                                       child: ElevatedButton( 
                                         onPressed: () async {
                bool isAuthenticated = await authenticate();
                if (isAuthenticated) {
                  // User is authenticated, perform necessary actions
                  // e.g., navigate to the home page
                 // ignore: use_build_context_synchronously
                 String name =firstNameController.toString();
                 Navigator.push(
                     context,
                          MaterialPageRoute(builder: (context) =>  Home()),
                             ); 
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Authentication Failed'),
                        content: Text('Invalid username or password.'),
                        actions: [
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ]
                      );
                    },
                  );
                };
                                         },
                                        /* onPressed: () async {
                                         
                                       GoRouter.of(context).prepareAuthEvent();
                                      final user = await authManager.signInWithEmail(
                                       context,
                                      _model.emailAddressController.text,
                                      _model.passwordController.text,
                                            );
                                     if (user == null) {
                                      return;
                                         }
    context.goNamedAuth('null', mounted);
  },*/
  // ignore: sort_child_properties_last
  child:  const Text(
    'Sign In',
    style: TextStyle(
      fontFamily: 'Poppins',
      color:Color.fromARGB(255, 255, 255, 255),
      fontSize: 19,
    ),
  ),
  style: ElevatedButton.styleFrom(
    // ignore: deprecated_member_use
    primary: const Color(0xEC234182),
    elevation: 10,
    padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 88),
    side: const  BorderSide(
      color: Colors.transparent,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
                                                 ),
                                                 ),

                                        Padding(
                                          padding:
                                             const EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: ElevatedButton(
                                           
                                          onPressed: () {
                                       },
                                      style: ElevatedButton.styleFrom(
                                       // ignore: deprecated_member_use
                                       primary: const Color(0xD3DDDCE6),
                                       // ignore: deprecated_member_use
                                       onPrimary: Colors.grey,
                                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      textStyle: const TextStyle(
                                       fontSize: 10,
                                       fontFamily: 'Poppins',
                                       ),
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                       side: const BorderSide(color: Colors.transparent, width: 1),
                                        ),
                                        elevation: 0,
                                       ),
                                         child: const Text('Forgot Password?'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24, 24, 24, 24),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                           const   EdgeInsetsDirectional.fromSTEB(
                                                  0, 24, 0, 0),
                                          child: TextFormField(
                                           
                                             onSaved: (value) => _email = value!,
                                            controller:Econtroller,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Email Address',
                                              labelStyle:
                                                  const  TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                            color: Color.fromARGB(255, 75, 73, 73)
                                                      ),
                                              hintText: 'Enter your email...',
                                              hintStyle:  const  TextStyle(
                                                fontSize: 8,
                                                    fontFamily: 'Poppins',
                                                    color:Colors.grey,
                                                    fontWeight:  FontWeight.w500,
                                                    
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Colors.grey,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                
                                                borderSide:const BorderSide(
                                                  color: Color(0x00000000),                                                 width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide:const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor:const Color(0x75FBFBFB),
                                              contentPadding:
                                                 const EdgeInsetsDirectional
                                                      .fromSTEB(20, 24, 20, 24),
                                            ),
                                            style:  const  TextStyle(
                                              fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  color: Color.fromARGB(255, 0, 0, 0),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            maxLines: null,
                                           
                                          ),
                                        ),
                                        ///////////////////////passxord
                                        Padding(
                                          padding:
                                            const  EdgeInsetsDirectional.fromSTEB(
                                                  0, 21, 0, 0),
                                          child: TextFormField(
                                           
                                             onSaved: (value) => _password = value!,

                                            controller: Pcontroller,
                                            obscureText: !_passwordVisible,
                                            decoration: InputDecoration(
                                              labelText: 'Password',
                                              labelStyle:
                                                   const  TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                        color: Color.fromARGB(255, 75, 73, 73)
                                                      ),
                                              hintText:
                                                  'Enter your password...',
                                              hintStyle:
                                               const  TextStyle(
                                                  fontSize: 10,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide:const BorderSide(
                                                  color: Colors.grey,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide:const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide:const BorderSide(
                                                  color:Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor:const Color(0x75FBFBFB),
                                              contentPadding:
                                                const  EdgeInsetsDirectional
                                                      .fromSTEB(20, 24, 20, 24),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _passwordVisible =!_passwordVisible,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _passwordVisible
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: const Color.fromARGB(255, 96, 207, 99),
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            style: const TextStyle(
                                              fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0F1113),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            maxLines: 1,
                                           
                                          ),
                                        ),
                                   ///////////// first name 
                                   ///
                                     Padding(
                                          padding:
                                            const  EdgeInsetsDirectional.fromSTEB(
                                                  0, 21, 0, 0),
                                          child: TextFormField(
                                            controller: firstNameController,
                                             onSaved: (value) => _firstname= value!,

                                            decoration: InputDecoration(
                                              labelText: 'UserName ',
                                              labelStyle:
                                                   const  TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14,
                                                        color: Color.fromARGB(255, 75, 73, 73)
                                                      ),
                                              hintText:
                                                  'Enter your userName...',
                                              hintStyle:
                                               const  TextStyle(
                                                  fontSize: 10,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide:const BorderSide(
                                                  color: Colors.grey,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide:const BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide:const BorderSide(
                                                  color:Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor:const Color(0x75FBFBFB),
                                              contentPadding:
                                                const  EdgeInsetsDirectional
                                                      .fromSTEB(20, 24, 20, 24),
                                              
                                            ),
                                            style: const TextStyle(
                                              fontSize: 14,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF0F1113),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                            maxLines: 1,
                                           
                                          ),
                                        ), 
                                       
                                        Padding(
                                          padding:
                                            const  EdgeInsetsDirectional.fromSTEB(
                                                  0, 74, 0, 0),
                                          child: ElevatedButton(
                                          /*  onPressed: () async {
                                              GoRouter.of(context)
                                                  .prepareAuthEvent();

                                              final user = await authManager
                                                  .createAccountWithEmail(
                                                context,
                                                _model
                                                    .emailAddressCreateController
                                                    .text,
                                                _model.passwordCreateController
                                                    .text,
                                              );
                                              if (user == null) {
                                                return;
                                              }

                                              // ignore: use_build_context_synchronously
                                              context.goNamedAuth(
                                                  'null', mounted);
                                            },*/
                                               onPressed: () { _isValid = EmailValidator.validate(Econtroller.text);
                                                if (_isValid) {
                                                  
                                                Fluttertoast.showToast(
                                                msg: "Valid Email",
                                               toastLength: Toast.LENGTH_SHORT,
                                               gravity: ToastGravity.TOP,
                                               timeInSecForIosWeb: 1,
                                               fontSize: 16.0);
                                 
                                               firstNameController.text == "" ||
                        Pcontroller.text == ""
                    ? null
                    : () {
                        setState(() {
                          isLoading = true;
                        });
                        writeFormDataToFile(firstNameController.text,
                            Pcontroller.text, Econtroller.text);
                        
                      };
                                   
                                             } else if (Econtroller.text.isEmpty) {
                                               Fluttertoast.showToast(
                                             msg: 'Enter Email',
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.TOP,
                                       timeInSecForIosWeb: 1,
                                                 fontSize: 16.0);
                                      } else {
                                    Fluttertoast.showToast(
                                      msg: 'Enter a Valid Email',
                                     toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.TOP,
                                          timeInSecForIosWeb: 1,
                                     fontSize: 16.0);
                                   } }, 
                            style: ElevatedButton.styleFrom(
                                        // ignore: deprecated_member_use
                              primary: const Color(0xEC234182),
                                elevation: 3,
                               minimumSize: const Size(270, 50),
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                             side: const BorderSide(
                              color: Colors.transparent,
                             width: 1,
                            ),
                             ),
                           textStyle: const TextStyle(
                           fontFamily: 'Poppins',
                          fontSize: 15,
                         ),
                          ),
                                                   child: const Text('Create Account'),
                                                  
                                           
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment:const AlignmentDirectional(-1.05, -0.99),
              child: Image.asset(
                'assets/Image/Pngtreefeather handpainted feather pen.png',
                width: 126,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            Padding(padding:const  EdgeInsetsDirectional.fromSTEB(
                                                  5, 42, 0, 0),
            child: Align(
              alignment:const AlignmentDirectional(-0.53,-100),
              child: Image.asset(
                'assets/Image/ESYSTEM.png',
                width: 150,
                height: 70,
                fit: BoxFit.contain,
              ),
            ),
            ),
            Padding(padding:const  EdgeInsetsDirectional.fromSTEB(
                                                  2, 109, 0, 0),
            child:Align(
              alignment:const AlignmentDirectional(-0.68, 0.92),
              child: Image.asset(
                'assets/Image/filename.png',
                width: 207,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            ),
            const Padding(padding:EdgeInsetsDirectional.fromSTEB(
                                                  2, 189, 0, 0),
            child:Align(
              alignment:AlignmentDirectional(-0.61, -110),
              child: Text(
                'You Can Sign Up to Our Application',
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            ),
          ],
        ),
        ),
      );
    

  }


/*

Future<void> _submit() async {
    

  if (_formKey.currentState!.validate() ) {
    _formKey.currentState!.save();
    final url = Uri.parse('http://localhost:6000/users/signup');
    final json = {
   'first_name': _firstname,
        'last_name': _lastname,
        'email': _email,
        'password': _password,   


};

Navigator.push(
                     context,
                          MaterialPageRoute(builder: (context) =>  Home()),
                             ); 

   
  }
}


void _submitForm(BuildContext context) async {
    String firstName = firstNameController.text.trim();
    String lastName = lastNameController.text.trim();
    String email = Econtroller.text.trim();
    String password = Pcontroller.text;

    if (firstName.isNotEmpty && lastName.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
      User user = User(
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
      );
 Navigator.push(
                     context,
                          MaterialPageRoute(builder: (context) =>  Home()),
                             ); 

      try {
        await FirebaseFirestore.instance.collection('users').add(user.toJson());
        // Registration successful, perform any additional actions here
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Registration successful'),
          
        ));
                Navigator.push(
                     context,
                          MaterialPageRoute(builder: (context) =>  Home()),
                             ); 


      } catch (error) {
        // Handle error during registration
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Failed to register: $error'),
        ));
      }
    } else {
      // Handle empty fields
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Please fill all the fields'),
      ));
    }
  }



}
*/ 
void writeFormDataToFile(String username, String password,String email) async {
  try {
    // Get the directory for the app's documents
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    File file = File('${documentsDirectory.path}/d.txt');

    // Open the file in write mode
    RandomAccessFile raf = await file.open(mode: FileMode.write);

    // Write the form data to the file
    String formData = '$email,$password\n';
    await raf.writeString(formData);
    // Close the file
    await raf.close(); 
Navigator.push(
                     context,
                          MaterialPageRoute(builder: (context) =>  Home()),
                             ); 
  } catch (e) {
    print('Error writing file: $e');
  }
 
    // ignore: use_build_context_synchronously
    
}



Future<bool> authenticate() async {
    bool isAuthenticated = false;
    try {
      String data = await rootBundle.loadString('assets/raw/d.txt');
      List<String> lines = data.split('\n');

      for (String line in lines) {
        List<String> credentials = line.split(",");
        if (credentials.length == 2 &&
            credentials[0] == Econtroller.text &&
            credentials[1] == Pcontroller.text  ) {
          isAuthenticated = true;
          break;
        }
      }
    } catch (e) {
      print(e);
    }
    return isAuthenticated;
  }


}