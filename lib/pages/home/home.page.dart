import 'package:desktop_task_manager/pages/home/widgets/menu/home_menu.dart';
import 'package:desktop_task_manager/pages/theme/theme.dart';
import 'package:desktop_task_manager/pages/widgets/header.dart';
import 'package:desktop_task_manager/pages/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Color(0xFF894fc6),
          child: Icon(FeatherIcons.plus),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: Row(
          children: [
            Expanded(
              child: HomeLeftWidget(),
            ),
            Expanded(
              child: HomeRightWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeLeftWidget extends StatelessWidget {
  const HomeLeftWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 370,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(
                  title: Text('Hi Samantha'),
                  titleColor: Colors.white,
                  subTitle:
                      Text('Welcome back to the workspace. We missed you!'),
                ),
                SizedBox(height: 20),
                SearchBar(),
              ],
            ),
            SizedBox(height: 60),
            HomeMenu(
              children: [
                {
                  'colors': [
                    Color(0xFFF860CA),
                    Color(0xFFFA3197),
                  ],
                  'project_name': 'Green House',
                },
                {
                  'is_selected': true,
                  'colors': [
                    Color(0xFFF860CA),
                    Color(0xFFFA3197),
                  ],
                  'project_name': 'Cyber Punk',
                },
                {
                  'colors': [
                    Color(0xFFF860CA),
                    Color(0xFFFA3197),
                  ],
                  'project_name': 'Easy Crypto',
                },
                {
                  'colors': [
                    Color(0xFFF860CA),
                    Color(0xFFFA3197),
                  ],
                  'project_name': 'Travel App',
                },
                {
                  'colors': [
                    Color(0xFFF860CA),
                    Color(0xFFFA3197),
                  ],
                  'project_name': 'Landing Page',
                },
                {
                  'colors': [
                    Color(0xFFF860CA),
                    Color(0xFFFA3197),
                  ],
                  'project_name': 'More Project',
                },
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeRightWidget extends StatelessWidget {
  const HomeRightWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(60),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          children: [
            Header(
              title: Text('Cyber Punk'),
              titleColor: AppTheme.scaffoldBackgroundColor,
              subTitle: Text(
                  'Cillum mollit ullamco adipisicing id est nostrud Lorem voluptate aute reprehenderit.'),
            ),
            SizedBox(height: 60),
            ListView(
              shrinkWrap: true,
              primary: true,
              children: [
                TaskList(
                  listName: 'Today',
                ),
                SizedBox(height: 30),
                TaskList(
                  listName: 'Upcoming',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  final String listName;
  const TaskList({
    Key key,
    this.listName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              listName,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Divider(),
        ListView(
          shrinkWrap: true,
          primary: false,
          children: [
            for (int i = 0; i < 3; i++)
              ListTile(
                // contentPadding: EdgeInsets.symmetric(vertical: 15),
                leading: Checkbox(value: true, onChanged: (value) {}),
                title: Text('Example'),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    'Approved',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
