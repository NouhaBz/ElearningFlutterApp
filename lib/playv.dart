import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';




class playV extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<playV> {
  
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer(){
     controller = VideoPlayerController.asset('assets/Image/videoplayback.mp4');
     controller.addListener(() {
        setState(() {});
     });
    controller.initialize().then((value){
        setState(() {});
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar( 
              title: Text("UI UX basic "),
              backgroundColor: const Color.fromARGB(255, 82, 157, 255),
          ),
          body: Container( 
            child: Column(
              children:[
                  AspectRatio( 
                    aspectRatio: controller.value.aspectRatio,
                     child: VideoPlayer(controller),
                  ),

                  Container( //duration of video
                     child: Text("Total Duration: " + controller.value.duration.toString()),
                  ),

                  Container(
                      child: VideoProgressIndicator(
                        controller, 
                        allowScrubbing: true,
                        colors:VideoProgressColors(
                            backgroundColor: Color.fromARGB(255, 5, 64, 192),
                            playedColor: Colors.green,
                            bufferedColor: const Color.fromARGB(255, 39, 114, 176),
                        )
                      )
                  ),

                  Container(
                     child: Row(
                         children: [
                            IconButton(
                                onPressed: (){
                                  if(controller.value.isPlaying){
                                    controller.pause();
                                  }else{
                                    controller.play();
                                  }

                                  setState(() {
                                    
                                  });
                                }, 
                                icon:Icon(controller.value.isPlaying?Icons.pause:Icons.play_arrow)
                           ),

                           IconButton(
                                onPressed: (){
                                  controller.seekTo(Duration(seconds: 0));

                                  setState(() {
                                    
                                  });
                                }, 
                                icon:Icon(Icons.stop)
                           )
                         ],
                     ),
                  )
              ]
            )
          ),
       );
  }
}