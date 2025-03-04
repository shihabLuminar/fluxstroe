import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      endDrawer: Drawer(
        child: Column(),
      ),
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text("Search Screen"),
        ),
      ),
    );
  }
}
