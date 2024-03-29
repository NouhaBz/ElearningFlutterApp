
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/theme/box_icons_icons.dart';
import 'package:flutter_application/ui/widgets/card.dart';

import '../../navmenu/dashboard.dart';
import '../../navmenu/menu.dart';
import '../../navmenu/menuDash.dart';

class TopBar extends StatefulWidget {
  const TopBar({
    Key? key,
    required this.controller,
    required this.expanded,
    required this.onMenuTap,
  }) : super(key: key);

  final TextEditingController controller;
  final bool expanded;
  final onMenuTap;

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  int tab = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.white,
      width: MediaQuery.of(context).size.width,
      height: widget.expanded
          ? MediaQuery.of(context).size.height * 0.366
          : MediaQuery.of(context).size.height * 0.21,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Hi",
                    style: TextStyle(
                        color: Color(0xFF343434),
                        fontSize: 20,
                        fontFamily: 'Red Hat Display',
                        fontWeight: material.FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    child: const material.CircleAvatar(
                      backgroundImage: AssetImage('assets/Image/user.png'),
                    ),
                    onTap: () => setState(
                                                  () => Navigator.push(
                     context,
                          MaterialPageRoute(builder: (context) =>  Menu()),
                             )
                                                ), 
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CupertinoTextField(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: material.Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 25,
                      offset: Offset(0, 10),
                      color: Color(0x1A636363),
                    ),
                  ]),
              padding: EdgeInsets.all(10),
              style: TextStyle(
                  color: Color(0xFF343434),
                  fontSize: 18,
                  fontFamily: 'Red Hat Display'),
              enableInteractiveSelection: true,
              controller: widget.controller,
              expands: false,
              inputFormatters: [
              ],
              keyboardType: TextInputType.text,
              suffix: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  BoxIcons.bx_search,
                  color: Color(0xFFADADAD),
                ),
              ),
              textInputAction: TextInputAction.search,
              textCapitalization: TextCapitalization.words,
              placeholder: "Search",
              placeholderStyle: TextStyle(
                  color: Color(0xFFADADAD),
                  fontSize: 18,
                  fontFamily: 'Red Hat Display'),
            ),
          ),
          widget.expanded
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.165,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 10, 30),
                        child: CardWidget(
                          gradient: false,
                          button: true,
                          duration: 200,
                          border: tab == index
                              ? Border(
                                  bottom: BorderSide(
                                      color: tab == 0
                                          ? Color(0xFF2828FF)
                                          : tab == 1
                                              ? Color(0xFFFF2E2E)
                                              : tab == 2
                                                  ? Color(0xFFFFD700)
                                                  : Color(0xFF33FF33),
                                      width: 5),
                                )
                              : null,
                          child: Center(
                            child: Column(
                              mainAxisAlignment:
                                  material.MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(index == 0
                                    ? BoxIcons.bx_shape_circle
                                    : index == 1
                                        ? BoxIcons.bx_shape_polygon
                                        : index == 2
                                            ? BoxIcons.bx_shape_square
                                            : BoxIcons.bx_shape_circle),
                                Text(index == 0
                                    ? "ui/ux"
                                    : index == 1
                                        ? "APP DEV"
                                        : index == 2 ? "cyber security" : index == 3 ? "WEB DEV ":  "Deep learning")
                              ],
                            ),
                          ),
                          func: () {
                            setState(() {
                              tab = index;
                            });
                          },
                        ),
                      );
                    },
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
