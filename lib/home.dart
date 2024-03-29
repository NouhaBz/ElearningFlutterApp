import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_application/leaderB.dart';
import 'package:flutter_application/planner.dart';
import 'package:flutter_application/theme/box_icons_icons.dart';
import 'package:flutter_application/theme/configs.dart';
import 'package:flutter_application/ui/widgets/overlay.dart';
import 'package:flutter_application/ui/widgets/sectionHeader.dart';
import 'package:flutter_application/ui/widgets/topBar.dart';
import 'package:flutter_application/ui/widgets/videoCard.dart';
import 'package:flutter_application/vedios.dart';

class Home extends StatefulWidget {
  final onMenuTap;
 
  Home({this.onMenuTap});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabNo = 0;
  late bool overlayVisible;
  CupertinoTabController? controller;
  @override
  void initState() {
    overlayVisible = false;
    controller = CupertinoTabController(initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        CupertinoTabScaffold(
          backgroundColor: Colors().secondColor(1),
          controller: controller,
          tabBar: CupertinoTabBar(
            onTap: (value) {
              setState(() {
                tabNo = value;
              });
            },
            activeColor: material.Colors.lightBlue,
            inactiveColor: Color(0xFFADADAD),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_home_circle),
                  label: tabNo == 0 ? "Home" : "",),
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_calendar),
                  label: tabNo == 1 ? "Planner" : "",),
              BottomNavigationBarItem(icon: Container()),
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bxs_videos),
                  label: tabNo == 3 ? "Videos" : "",),
              BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_stats),
                  label: tabNo == 4 ? "Dashboard" : "",),
            ],
          ),
          tabBuilder: (context, index) => (index == 0)
              ? HomePage(
                  onMenuTap: widget.onMenuTap,
                )
              : (index == 1)
                  ? PlannerPage(
                      onMenuTap: widget.onMenuTap,
                    )
                  : (index == 2)
                      ? Container(
                          color: CupertinoColors.activeOrange,
                        )
                      : (index == 3)
                          ? VideosPage(
                              onMenuTap: widget.onMenuTap,
                            )
                          : const ProfileWidget(
                              
                            ),
        ),
        Positioned(
            bottom: 0,
            child: GestureDetector(
              child: SizedBox(
                height: 60,
                width: 80,
                child: Text(""),
              ),
              onTap: () {},
            )),
        overlayVisible ? OverlayWidget() : Container(),
        Positioned(
            bottom: 20,
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFABDCFF),
                      Color(0xFF0396FF),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 25,
                        color: Color(0xFF03A9F4).withOpacity(0.4),
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.circular(500)),
              child: material.FloatingActionButton(
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: material.Colors.transparent,
                  child: overlayVisible
                      ? Icon(material.Icons.close)
                      : Icon(BoxIcons.bx_pencil),
                  onPressed: () {
                    setState(() {
                      overlayVisible = !overlayVisible;
                    });
                  }),
            )),
      ],
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  final onMenuTap;
  HomePage({
    Key? key,
    required this.onMenuTap,
  }) : super(key: key);

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors().secondColor(1),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverFixedExtentList(
                    delegate: SliverChildListDelegate.fixed([Container()]),
                    itemExtent: MediaQuery.of(context).size.height * 0.31 ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Recommended Lectures',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        if (index == 0) {
      return VideoCard(long: false, title: "install andriod studio", time: "20", url: 'assets/Image/app dev.png',);
    } else if (index == 1) {
      return VideoCard(long: false, title: "start in ui", time: "40", url: 'assets/Image/uxui.png',);
    } else if (index == 2) {
      return VideoCard(long: false, title: "start with css", time: "40", url: 'assets/Image/web.png',);
    } else if (index == 3) {
      return VideoCard(long: false, title: "design with xml", time: "25", url: 'assets/Image/app dev.png',);
    }
    return null;
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Revision Lectures',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                          if (index == 0) {
      return VideoCard(long: false, title: "learn basics html css js", time: "20", url: 'assets/Image/app dev.png',);
    } else if (index == 1) {
      return VideoCard(long: false, title: "start in ui", time: "40", url: 'assets/Image/uxui.png',);
    } else if (index == 2) {
      return VideoCard(long: false, title: "asymetric protocol", time: "25", url: 'assets/Image/SC.jpg',);
    } else if (index == 3) {
      return VideoCard(long: false, title: "MERN STACK", time: "25", url: 'assets/Image/app dev.png',);
    }
    return null; 
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: TopBar(
              controller: controller,
              expanded: true,
              onMenuTap: onMenuTap,
            ),
          )
        ],
      ),
    );
  }
}