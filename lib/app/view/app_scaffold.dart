import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hs_mobile_app/app/app.dart';
import 'package:hs_mobile_app/home/home.dart';
import 'package:hs_mobile_app/news/news.dart';
import 'package:hs_mobile_app/profile/profile.dart';
import 'package:hs_mobile_app/propositions/propositions.dart';

/// This is a component intended to control the main routes of the app
/// using a bottom navigation bar
class AppScaffold extends StatefulWidget {
  const AppScaffold({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: AppScaffold());

  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int _currentIndex = 1;
  String _title = 'Home Page';
  final List<Widget> _children = [
    const NewsPage(),
    const HomePage(),
    const PropositionsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () =>
                Navigator.of(context).push<void>(ProfilePage.route()),
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => //! replace this method,logout should be elsewhere
                context.read<AppBloc>().add(const AppEvent.logoutRequested()),
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: _children[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onNavButtonTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'News',
            tooltip: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes),
            label: 'Propositions',
            tooltip: 'Propositions',
          ),
        ],
      ),
    );
  }

  void onNavButtonTapped(int value) {
    setState(() {
      _currentIndex = value;
      _title = _currentIndex == 0
          ? 'News Page'
          : _currentIndex == 1
              ? 'Home Page'
              : 'Propositions Page';
    });
  }
}
