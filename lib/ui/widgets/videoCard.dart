
// ignore: unused_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_application/theme/box_icons_icons.dart';
import 'package:flutter_application/theme/config.dart';
import 'package:flutter_application/ui/widgets/card.dart';
import 'package:flutter_application/videopage.dart';

class VideoCard extends material.StatelessWidget {
  final bool long;
  final String title ;
  final String time ;
  final String url ;
  const VideoCard({
    required this.long,
     required this.title,
     required this.time,
     required this.url,
    material.Key? key,
  }) : super(key: key);

  @override
  material.Widget build(material.BuildContext context) {
    return material.Padding(
      padding: const material.EdgeInsets.all(10.0),
      child: CardWidget(
        gradient: false,
        button: true,
        width: long ? 260 : 180,
        child: material.Column(
          mainAxisAlignment: material.MainAxisAlignment.start,
          children: <material.Widget>[
            material.Container(
              width: long ? 360 : 180,
              height: 87,
              decoration: material.BoxDecoration(
                image: material.DecorationImage(
                    image: material.AssetImage('$url'),
                    fit: material.BoxFit.cover),
                borderRadius: material.BorderRadius.only(
                  topLeft: material.Radius.circular(10),
                  topRight: material.Radius.circular(10),
                ),
              ),
              child: material.Text(""),
            ),
            material.Padding(
              padding: const material.EdgeInsets.all(3.0),
              child: material.Text(
                "$title",
                overflow: material.TextOverflow.ellipsis,
                maxLines: 2,
                style: material.TextStyle(
                    color: material.Color(0xFF535353),
                    fontFamily: 'Red Hat Display',
                    fontSize: 12),
              ),
            ),
            material.Padding(
              padding: const material.EdgeInsets.symmetric(horizontal: 8.0),
              child: material.Row(
                children: <material.Widget>[
                  material.Icon(BoxIcons.bx_bar_chart_alt_2, size: 16),
                  material.Text(
                    "Beginner",
                    style: material.TextStyle(
                        color: material.Color(0xFFADADAD),
                        fontFamily: 'Red Hat Display',
                        fontSize: 10),
                  ),
                  material.Spacer(),
                  material.Text(
                    "$time mins",
                    style: material.TextStyle(
                        color: material.Color(0xFFADADAD),
                        fontFamily: 'Red Hat Display',
                        fontSize: 10),
                  ),
                  material.Icon(BoxIcons.bx_timer, size: 16),
                ],
              ),
            ),
            material.Spacer(),
            material.Padding(
              padding: const material.EdgeInsets.only(top: 8.0),
              child: material.GestureDetector(
                onTap: () {
               Navigator.push(
                     context,
                        material.MaterialPageRoute(builder: (context) =>  Videopage()),
                             ); 
          },
                child: material.Container(
                  padding: material.EdgeInsets.fromLTRB(0, 14, 0, 14),
                  decoration: material.BoxDecoration(gradient: Colors().waves),
                  child: const material.Row(
                    mainAxisAlignment: material.MainAxisAlignment.spaceEvenly,
                    children: <material.Widget>[
                      material.Icon(BoxIcons.bx_play_circle,
                          color: material.Colors.white),
                          
                      material.Text(
                        "Watch ",
                        style: material.TextStyle(
                            color: material.Colors.white,
                            fontFamily: 'Red Hat Display',
                            fontSize: 14),
                      )
                    ],
                  ),
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
