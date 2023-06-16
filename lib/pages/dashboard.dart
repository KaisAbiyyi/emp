import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(
          right: 16,
          bottom: 16,
        ),
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: List.generate(
            50,
            (index) => Container(
              color: Colors.red,
              child: Text('asdi'),
            ),
          ),
        ),
      ),
    );
  }
}
