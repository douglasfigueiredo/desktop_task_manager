import 'package:desktop_task_manager/pages/home/widgets/menu/menu_item.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  final List<Map<String, dynamic>> children;

  const HomeMenu({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        final _menuItem = children[index];
        return HomeMenuItem(
          isSelected: _menuItem['is_selected'] ?? false,
          colors: _menuItem['colors'],
          projectName: _menuItem['project_name'],
        );
      },
      itemCount: children.length,
    );
  }
}
