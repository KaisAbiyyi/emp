import 'package:flutter/material.dart';
import 'package:movie_player/components/navbar.dart';
import 'package:movie_player/pages/favorite.dart';
import 'package:movie_player/pages/dashboard.dart';

class MainPage extends StatefulWidget {
  final int sidebarData;
  const MainPage({Key? key, required this.sidebarData}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final ListPages = [
      DashboardPage(),
      FavoritePage(),
    ];
    return Expanded(
      child: Column(
        children: [
          Navbar(),
          SizedBox(
            height: 16,
          ),
          ListPages[widget.sidebarData],
        ],
      ),
    );
  }
}
