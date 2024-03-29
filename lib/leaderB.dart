
import 'package:flutter/material.dart';
import 'package:flutter_application/logsign.dart';


class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Align(
          alignment: AlignmentDirectional(10, 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 140,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color:Color.fromARGB(55, 141, 143, 145),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/Image/user.png',
                                  width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: ClipOval(
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(55, 255, 255, 255),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color:
                                   Theme.of(context).primaryColor,
                                width: 4,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 12),
                child: Text(
                  'mayar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                        fontFamily: 'Poppins',
                        color:Color.fromARGB(255, 0, 0, 0),
                      ),
                ),
              ),
              Text(
                'mayar@gmail.com',
                style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(234, 66, 66, 66)              ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 32),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                            child: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(55, 141, 143, 145),
                                shape: BoxShape.circle,
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Icon(
                                Icons.work_outline,
                                size: 24,
                              ),
                            ),
                          ),
                          Text(
                            'Passenger Documents',
                            textAlign: TextAlign.center,
                            style:TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                            fontSize: 5,
                                          ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                              child: Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(55, 141, 143, 145),
                                  shape: BoxShape.circle,
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Icon(
                                  Icons.notifications_outlined,
                                  
                                  size: 24,
                                ),
                              ),
                            ),
                            Text(
                              'Tracker Notifications',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                            fontSize: 5,
                                          ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                            child: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(55, 141, 143, 145),
                                shape: BoxShape.circle,
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Icon(
                                Icons.help_outline_outlined,
                                size: 24,
                              ),
                            ),
                          ),
                          Text(
                            'Help Center',
                            textAlign: TextAlign.center,
                            style:TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                            fontSize: 5,
                                          ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(195, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color.fromARGB(186, 255, 255, 255),
                        offset: Offset(0, -1),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                child: Text(
                                  'Settings',
                                  style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                          ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 16, 8),
                                      child: Icon(
                                        Icons.work_outline,
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                        child: Text(
                                          'Phone Number',
                                          textAlign: TextAlign.start,
                                          style:TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Add Number',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 16, 8),
                                      child: Icon(
                                        Icons.language_rounded,
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                        child: Text(
                                          'Language',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'English (eng)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 16, 8),
                                      child: Icon(
                                        Icons.money_rounded,
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                        child: Text(
                                          'Currency',
                                          textAlign: TextAlign.start,
                                          style:TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'US Dollar (\$)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 16, 8),
                                      child: Icon(
                                        Icons.edit,
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                        child: Text(
                                          'Profile Settings',
                                          textAlign: TextAlign.start,
                                          style:TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Edit Profile',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 16, 8),
                                      child: Icon(
                                        Icons.notifications_active,
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                        child: Text(
                                          'Notification Settings',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.chevron_right_rounded,
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 16, 8),
                                      child: Icon(
                                        Icons.login_rounded,
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 12, 0),
                                        child: 
                                        
                                         TextButton(
  onPressed: () {
    Navigator.push(
                     context,
                          MaterialPageRoute(builder: (context) =>  LogSign()),
                             ); 
 
  },
  style: TextButton.styleFrom(
    primary: Color.fromARGB(255, 0, 0, 0),
    textStyle: TextStyle(
      fontFamily: 'Poppins',
    ),
  ),
  child: Text(
    'Log out of account',
  ),
                    
                                      ),
                                    ),
                              ),
TextButton(
  onPressed: () {
    Navigator.push(
                     context,
                          MaterialPageRoute(builder: (context) =>  LogSign()),
                             ); 
 
  },
  style: TextButton.styleFrom(
    primary: Color.fromARGB(255, 0, 0, 0),
    textStyle: TextStyle(
      fontFamily: 'Poppins',
    ),
  ),
  child: Text(
    'Log Out?',
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
            ],
          ),
        ),
      ),
    );
  }
}
