
import '../../theme/config.dart' as config;
import 'package:flutter/cupertino.dart';
import 'package:flutter_application/ui/widgets/sectionHeader.dart';
import 'package:flutter_application/ui/widgets/topBar.dart';
import 'package:flutter_application/ui/widgets/videoCard.dart';

// ignore: must_be_immutable
class VideosPage extends StatelessWidget {
  VideosPage({
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
                    text: 'Best of UI/UX',
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
      return VideoCard(long: false, title: "basic in ui", time: "20", url: 'assets/Image/uxui.png',);
    } else if (index == 1) {
      return VideoCard(long: false, title: "start in ui", time: "40", url: 'assets/Image/uxui.png',);
    } else if (index == 2) {
      return VideoCard(long: false, title: "about colors in ui", time: "25", url: 'assets/Image/uxui.png',);
    } else if (index == 3) {
      return VideoCard(long: false, title: "basic in ux", time: "30", url: 'assets/Image/uxui.png',);
    }
    return null; 
  
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Best of APP DEV',
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
      return VideoCard(long: false, title: "install android studio", time: "20", url: 'assets/Image/app dev.png',);
    } else if (index == 1) {
      return VideoCard(long: false, title: "start with Java", time: "40", url: 'assets/Image/app dev.png',);
    } else if (index == 2) {
      return VideoCard(long: false, title: "design with XML", time: "25", url: 'assets/Image/app dev.png',);
    } else if (index == 3) {
      return VideoCard(long: false, title: "database with Android", time: "30", url: 'assets/Image/app dev.png',);
    }
    return null; 
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Best of cyber security',
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
      return VideoCard(long: false, title: "class of attack", time: "20", url: 'assets/Image/SC.jpg',);
    } else if (index == 1) {
      return VideoCard(long: false, title: "symmetric protocol", time: "40", url: 'assets/Image/SC.jpg',);
    } else if (index == 2) {
      return VideoCard(long: false, title: "asymmetric protocol", time: "25", url: 'assets/Image/SC.jpg',);
    } else if (index == 3) {
      return VideoCard(long: false, title: "OPEN SSL", time: "30", url: 'assets/Image/SC.jpg',);
    }
    return null;
                      },
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: SectionHeader(
                    text: 'Best of web dev',
                    onPressed: () {},
                  ),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 245,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      
                      itemBuilder: (context, index) {
                       
                        if (index == 0) {
      return VideoCard(long: false, title: "learn basics html css js", time: "20", url: 'assets/Image/web.png',);
    } else if (index == 1) {
      return VideoCard(long: false, title: "CMV model", time: "40", url: 'assets/Image/web.png',);
    } else if (index == 2) {
      return VideoCard(long: false, title: "MERN STACK", time: "25", url: 'assets/Image/web.png',);
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
              expanded: false,
              onMenuTap: onMenuTap,
            ),
          )
        ],
      ),
    );
  }
}