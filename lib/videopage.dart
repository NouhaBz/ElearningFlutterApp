
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter_application/playv.dart';
import 'package:flutter_application/ui/widgets/clips.dart';

import 'package:video_player/video_player.dart';

class Videopage extends StatefulWidget {
  const Videopage({Key? key}) : super(key: key);

  @override
  _VideopageWidgetState createState() => _VideopageWidgetState();
}

class _VideopageWidgetState extends State<Videopage> {
 
late Future<void> videoPlayerFuture;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
 late VideoPlayerController _videoController;
  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(
        'assets/Image/videoplayback.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoController.pause();
      });
      videoPlayerFuture = _videoController.initialize();
  }

  @override
  void dispose() {
_videoController.dispose();
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color.fromARGB(237, 255, 255, 255),

        appBar: AppBar(
          backgroundColor: Color.fromARGB(237, 255, 255, 255),
          automaticallyImplyLeading: false,
          leading: IconButton(
  padding: EdgeInsets.zero,
  constraints: BoxConstraints(),
  icon: Icon(
    Icons.arrow_back_rounded,
    size: 30,
    color :Color.fromARGB(236, 70, 70, 70),
  ),
  onPressed: () {
     Navigator.pop(context);
    // Add your onPressed logic here
  },
),
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Text(
                                'UX/UI COURS',
                                style:TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                              child: Container(
  width: double.infinity,
  height: 230,
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 114, 114, 114),
    boxShadow: [
      BoxShadow(
        blurRadius: 12,
        color: Color.fromARGB(176, 0, 0, 0),
        offset: Offset(0, 5),
      ),
    ],
    borderRadius: BorderRadius.circular(12),
  ),
  child: AspectRatio(
    aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
    child: Stack(
      alignment: Alignment.center,
      children: [
        VideoPlayer(_videoController),
        //FloatingActionButton(
         // onPressed: () {
         //   if (_videoController.value.isPlaying) {
           //   _videoController.pause();
            //} else {
              //_videoController.play();
            //}
          //},
          //child: Icon(
            //_videoController.value.isPlaying ? Icons.pause : Icons.play_arrow,
            //color: Color.fromARGB(82, 202, 201, 201),
          //),
        //),
      ],
    ),
  ),
),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                              child: Text(
                                '12:30pm',
                                style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        child: Container(
                          width: double.infinity,
                          color:  Color.fromARGB(255, 218, 218, 218),
                          child: 
ExpandableNotifier(
  initialExpanded: false,
  child: ExpandablePanel(
    header: Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
      child: Text(
        'Basic in ux ui',
        style: TextStyle(
          fontFamily: 'Poppins',
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    ),
    collapsed: Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 218, 218, 218),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
        child: Text(
          'By protecting and preserving our videis',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    ),
    expanded: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
          child: Text(
            '',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ],
    ),
    theme: const ExpandableThemeData(
      tapHeaderToExpand: true,
      tapBodyToExpand: true,
      tapBodyToCollapse: true,
      headerAlignment: ExpandablePanelHeaderAlignment.center,
      hasIcon: false,
      iconColor: Color.fromARGB(164, 146, 146, 146),
    ),
  ),
)
                        ),
                      ),
                      Divider(
                        height: 12,
                        thickness: 1,
                        color: Color.fromARGB(163, 255, 255, 255),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                        child: Text(
                          'Featured Speakers',
                          style: TextStyle(
                      fontFamily: 'Poppins',
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                        child: Text(
                          'netllipaat',
                          style: TextStyle(
                      fontFamily: 'Poppins',
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                        child: Text(
                          'E System',
                          style: TextStyle(
                      fontFamily: 'Poppins',
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 12),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 88, 140, 252),
                        Color.fromARGB(255, 0, 20, 109),
                      ],
                      stops: [0, 1],
                      begin: AlignmentDirectional(-1, 0),
                      end: AlignmentDirectional(1, 0),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: AlignmentDirectional(0, 0),
                  child: TextButton(
  onPressed: () {
    Navigator.push(
                     context,
                          MaterialPageRoute(builder: (context) =>  playV()),
                             ); 
 
  },
  style: TextButton.styleFrom(
    primary: Color.fromARGB(255, 0, 0, 0),
    textStyle: TextStyle(
      fontFamily: 'Poppins',
    ),
  ),
  child: Text(
    'watch now',
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
