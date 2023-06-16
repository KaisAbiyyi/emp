import 'package:flutter/material.dart';
import 'package:movie_player/components/sidebar.dart';
import 'package:movie_player/config/scrollbar.dart';
import 'package:movie_player/layouts/page.dart';

void main() {
  runApp(MAIN());
}

class MAIN extends StatefulWidget {
  const MAIN({super.key});

  @override
  State<MAIN> createState() => _MAINState();
}

class _MAINState extends State<MAIN> {
  int sidebarData = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EMP",
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollbarBehavior(),
      home: Scaffold(
        backgroundColor: Color(0xfff1f5f9),
        body: Container(
          child: Row(
            textDirection: TextDirection.ltr,
            children: [
              Sidebar(
                onDataSelected: (data) {
                  setState(() {
                    sidebarData = data;
                  });
                },
              ),
              SizedBox(
                width: 16,
              ),
              MainPage(
                sidebarData: sidebarData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
