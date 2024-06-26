import 'package:flutter/material.dart';

class BottomBarButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool useSecondButton;

  const BottomBarButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.useSecondButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: useSecondButton
                ? const Color.fromARGB(255, 205, 255, 238)
                : Colors.transparent,
          ),
          child: Center(
            child: useSecondButton
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        size: 32,
                        color: const Color.fromARGB(255, 12, 160, 108),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 12, 160, 108),
                        ),
                      ),
                    ],
                  )
                : Icon(
                    icon,
                    size: 32,
                    color: const Color.fromARGB(255, 205, 255, 238),
                  ),
          ),
        ),
      ),
    );
  }
}