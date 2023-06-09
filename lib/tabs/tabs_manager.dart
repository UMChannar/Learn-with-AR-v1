import 'package:flutter/material.dart';
import 'package:learn_with_ar_v1/tabs/home_screen.dart';

class TabsManager extends StatefulWidget {
  static const routeName = '/tabs-manager';
  const TabsManager({super.key});

  @override
  State<TabsManager> createState() => _TabsManagerState();
}

class _TabsManagerState extends State<TabsManager> {
  List<Map<String, dynamic>>? pages;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages = [
      {
        'page': const HomeScreen(),
      },
      {},
      {},
      {},
      {},
    ];
  }

  int selectedPageIndex = 0;

  void selectScreen(int index) {
    setState(
      () {
        selectedPageIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages![selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPageIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          onTap: selectScreen,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              label: 'Evaluation',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.visibility),
              label: 'Observation',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera),
              label: 'Recognition',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.feedback),
              label: 'Feedback',
            ),
          ],
        ),
      ),
    );
  }
}
