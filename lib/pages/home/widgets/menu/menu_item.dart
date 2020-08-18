import 'package:desktop_task_manager/pages/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeMenuItem extends StatelessWidget {
  final bool isSelected;
  final List<Color> colors;
  final String projectName;

  const HomeMenuItem({
    Key key,
    this.colors,
    this.projectName,
    this.isSelected = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _textPArts = projectName.split(' ');
    return Column(
      children: [
        Stack(
          children: [
            Container(
              // margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: isSelected
                    ? Border.all(color: Colors.orange, width: 2)
                    : null,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(colors: colors),
                ),
                child: Center(
                    child: Text(
                  _textPArts.first[0].toUpperCase() +
                      _textPArts.last[0].toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            Positioned(
              top: 2,
              right: 2,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: AppTheme.scaffoldBackgroundColor, width: 2),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Text(
          projectName ?? '',
          style: TextStyle(color: Color(0xFFC8C8CF)),
        ),
      ],
    );
  }
}
