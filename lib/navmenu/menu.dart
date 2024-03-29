
import 'package:flutter/material.dart';
import 'package:flutter_application/theme/box_icons_icons.dart';

class Menu extends StatelessWidget {
  
  final int? selectedIndex;
  

  const Menu(
      {Key? key,
      
      this.selectedIndex,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.33,
            height: MediaQuery.of(context).size.height * 0.67,
            decoration: BoxDecoration(
              color: Color(0x80FFFFFF),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 135,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Image/navwave.png"),
                  fit: BoxFit.fitWidth),
            ),
          ),
        ),
        Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 28, 10, 0),
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ), onPressed: () {  },
                
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/Image/user.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "",
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontFamily: "Red Hat Display",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Student",
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontFamily: "Red Hat Display",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(
                            BoxIcons.bx_home_circle,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Home",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontFamily: "Red Hat Display",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Icon(
                            BoxIcons.bx_edit,
                             size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Todo",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontFamily: "Red Hat Display",
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Icon(
                            BoxIcons.bx_book_alt,
                             size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Subjects",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontFamily: "Red Hat Display",
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Icon(
                            BoxIcons.bx_chat,
                             size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Forum",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontFamily: "Red Hat Display",
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Icon(
                            BoxIcons.bx_calendar,
                             size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Schedule",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontFamily: "Red Hat Display",
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    SizedBox(
                      height: 1,
                      width: 200,
                      child: Container(
                        color: Colors.white54,
                      ),
                    ),
                    Spacer(flex: 1),
                    Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Icon(
                            BoxIcons.bx_cog,
                             size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Settings",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontFamily: "Red Hat Display",
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Icon(
                            BoxIcons.bx_help_circle,
                             size: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Help",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontFamily: "Red Hat Display",
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 5),
                  ],
                ),
              ),
            ),
          
        ),
      ],
    );
  }
}
