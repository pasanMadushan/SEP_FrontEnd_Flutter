import 'package:flutter/material.dart';
import 'package:frontend_flutter/assets/colors.dart';
import 'package:frontend_flutter/widgets/logo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom == 0.0;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Logo(
          logoSize: 30,
          color: SecondayColorBlue,
        ),
        actions: [
          CircleAvatar(
            radius: 25,
          ),
          SizedBox(
            width: 10,
          )
        ],
        backgroundColor: PrimaryColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 10),
              height: 70,
              color: PrimaryColor,
              child: TextField(
                style: TextStyle(color: PrimaryColor),
                cursorColor: PrimaryColor,
                decoration: InputDecoration(
                  focusColor: PrimaryColor,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  hintText: 'Search cities and attractions',
                  // labelText: 'Search cities and attractions',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        color: PrimaryColor,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: BottomIcon(path: "icons/compass_icon.png"),
                  onPressed: () {}),
              IconButton(
                  icon: BottomIcon(path: "icons/bookmark_icon.png"),
                  onPressed: () {}),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              IconButton(
                  icon: BottomIcon(path: "icons/bell_icon.png"),
                  onPressed: () {}),
              IconButton(
                  icon: BottomIcon(path: "icons/user_icon.png"),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              backgroundColor: PrimaryColor,
              child: BottomIcon(
                path: "icons/globe_icon.png",
              ),
              onPressed: () {})
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class BottomIcon extends StatelessWidget {
  final String path;

  const BottomIcon({required this.path});

  @override
  Widget build(BuildContext context) {
    return IconTheme(
      data: IconThemeData(color: null),
      child: Image(
        image: AssetImage(path),
        width: MediaQuery.of(context).size.height * 0.05,
        height: MediaQuery.of(context).size.height * 0.05,
        color: Colors.white,
        fit: BoxFit.scaleDown,
        alignment: Alignment.center,
      ),
    );
  }
}
