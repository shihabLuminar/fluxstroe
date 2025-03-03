import 'package:flutter/material.dart';
import 'package:fluxstroe/utils/constatns/image_constatns.dart';
import 'package:fluxstroe/view/cart_screen/cart_screen.dart';
import 'package:fluxstroe/view/home_screen/home_screen.dart';
import 'package:fluxstroe/view/profile_screen/profile_screen.dart';
import 'package:fluxstroe/view/search_screen/search_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int selectedIndex = 0;
  List<Widget> screensList = [
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screensList[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          boxShadow: [
            BoxShadow(color: Colors.black45, blurRadius: 3),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstatns.homeInactive),
                activeIcon: Image.asset(ImageConstatns.homeActive),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstatns.searchInactive),
                activeIcon: Image.asset(ImageConstatns.searchActive),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstatns.cartInactive),
                activeIcon: Image.asset(ImageConstatns.cartActive),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(ImageConstatns.profileInactive),
                activeIcon: Image.asset(ImageConstatns.profileActive),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
