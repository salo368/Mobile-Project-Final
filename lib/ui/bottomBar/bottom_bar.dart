import 'package:flutter/material.dart';
import 'bottom_bar_button.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int barState = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
      child: Container(
        color: Colors.white, // Cambia el color de fondo según sea necesario
        child: Row(
          children: [
            Expanded(
              flex: barState == 0 ? 2 : 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    barState = 0;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 62,
                  color: barState == 0
                      ? const Color.fromARGB(255, 12, 160, 108)
                      : const Color.fromARGB(255, 12, 160, 108),
                  child: BottomBarButton(
                    icon: Icons.person,
                    text: "Profile",
                    useSecondButton: barState == 0 ? true : false,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: barState == 1 ? 2 : 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    barState = 1;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 62,
                  color: barState == 1
                      ? const Color.fromARGB(255, 12, 160, 108)
                      : const Color.fromARGB(255, 12, 160, 108),
                  child: BottomBarButton(
                    icon: Icons.home,
                    text: "Home",
                    useSecondButton: barState == 1 ? true : false,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: barState == 2 ? 2 : 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    barState = 2;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 62,
                  color: barState == 2
                      ? const Color.fromARGB(255, 12, 160, 108)
                      : const Color.fromARGB(255, 12, 160, 108),
                  child: BottomBarButton(
                    icon: Icons.grid_view_outlined,
                    text: "Projects",
                    useSecondButton: barState == 2 ? true : false,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: barState == 3 ? 2 : 1,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    barState = 3;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 62,
                  color: barState == 3
                      ? const Color.fromARGB(255, 12, 160, 108)
                      : const Color.fromARGB(255, 12, 160, 108),
                  child: BottomBarButton(
                    icon: Icons.bar_chart,
                    text: "Stats",
                    useSecondButton: barState == 3 ? true : false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


