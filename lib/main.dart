import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matching_app/tab_item.dart';
import 'package:matching_app/ui/home/home_view.dart';
import 'package:matching_app/ui/like/like_list_view.dart';
import 'package:matching_app/ui/message/message_list_view.dart';

Future<void> main() async {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainView(title: 'home'),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  String _title = "";

  static const List<Widget> _pageList = <Widget>[
    HomeView(
      title: 'home',
    ),
    LikeListView(
      title: 'like',
    ),
    MessageListView(
      title: 'message',
    ),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = TabItem.home.name;
          }
          break;
        case 1:
          {
            _title = TabItem.like.name;
          }
          break;
        case 2:
          {
            _title = TabItem.message.name;
          }
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _title = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: _pageList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: TabItem.home.name,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.thumb_up_alt),
            label: TabItem.like.name,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.chat),
            label: TabItem.message.name,
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        onTap: _onTap,
      ),
    );
  }
}
