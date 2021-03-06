import 'package:flutter/material.dart';

import 'package:tianyue/public.dart';

class NovelDetailCell extends StatelessWidget {
  final String iconName;
  final String title;
  final String subtitle;
  final String updateTime;
  final Widget attachedWidget;
  final VoidCallback onTap;

  NovelDetailCell({this.iconName, this.title, this.subtitle, this.attachedWidget,this.updateTime,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            Divider(height: 1),
            Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  Image.asset(iconName),
                  SizedBox(width: 5),
                  Text(title, style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      subtitle,
                      style: TextStyle(fontSize: 14, color: TYColor.gray),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    updateTime,
                    style: TextStyle(fontSize: 14, color: TYColor.gray),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  attachedWidget != null ? attachedWidget : Container(),
                  SizedBox(width: 10),
                  Image.asset('img/arrow_right.png'),
                ],
              ),
            ),
            Divider(height: 1),
          ],
        ),
      ),
    );
  }
}
