import 'package:desktop_task_manager/pages/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final name;
  final Widget title;
  final Widget subTitle;
  final Color titleColor;

  const Header({Key key, this.name, this.title, this.subTitle, this.titleColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTextStyle(
            style: TextStyle(
              color: titleColor,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            child: title,
          ),
          SizedBox(height: 10),
          DefaultTextStyle(
            style: TextStyle(
              color: Color(0xFF8C919E),
            ),
            child: subTitle,
          ),
        ],
      ),
    );
  }
}
