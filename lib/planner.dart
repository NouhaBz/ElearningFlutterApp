
import 'package:flutter/cupertino.dart';
import 'package:flutter_application/ui/widgets/videoCard.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

import '../../theme/config.dart' as config;

import 'package:flutter_application/ui/widgets/card.dart';
import 'package:flutter_application/ui/widgets/sectionHeader.dart';
import 'package:flutter_application/ui/widgets/topBar.dart';
import 'package:flutter/material.dart' as material;

// ignore: must_be_immutable
class PlannerPage extends StatelessWidget {
  PlannerPage({
    Key? key,
    required this.onMenuTap,
  }) : super(key: key);
  final Function? onMenuTap;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: config.Colors().secondColor(1),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SafeArea(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverFixedExtentList(
                    delegate: SliverChildListDelegate.fixed([Container()]),
                    itemExtent: MediaQuery.of(context).size.height * 0.16),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Today\'s Work',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        if (index == 0) {
      return VideoCard(long: false, title: "learn basics html css js", time: "20", url: 'assets/Image/web.png',);
    } else if (index == 1) {
      return VideoCard(long: false, title: "symmetric protocol", time: "40", url: 'assets/Image/SC.jpg',);
    }
   // Return null for other index values (optional)
  
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Calendar',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    height: 300,
                    child: CardWidget(
                      
                      button: false,
                      gradient: false,
                      child: material.Material(
                        child: CalendarCarousel(
                          headerTextStyle: TextStyle(
                             color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20,
                                       fontWeight: FontWeight.bold,
                                    ),
                                    weekdayTextStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          isScrollable: true,
                          todayButtonColor: Color.fromARGB(255, 22, 129, 211),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 70,
                    child: Text(""),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: TopBar(
              controller: controller,
              expanded: false,
              onMenuTap: onMenuTap,
            ),
          )
        ],
      ),
    );
  }
}