import 'package:desktop_task_manager/pages/theme/theme.dart';
import 'package:flutter/material.dart';

import 'pages/home/home.page.dart';

void main() {
  runApp(TaskManageApp());
}

class TaskManageApp extends StatelessWidget {
  static final appName = 'Task Manage App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.geTheme(context),
      title: appName,
      home: HomePage(),
    );
  }
}
