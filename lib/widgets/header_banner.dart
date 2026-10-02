import 'package:flutter/material.dart';

class HeaderBanner extends StatelessWidget {
  const HeaderBanner({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 24,
            top: 30,
            child: Text(
              'HỒ SƠ SINH VIÊN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Positioned(
            right: 16,
            top: 20,
            child: Row(
              children: [
                const Icon(
                  Icons.light_mode,
                  color: Colors.white,
                ),
                Switch(
                  value: isDarkMode,
                  onChanged: onThemeChanged,
                  activeThumbColor: Colors.white,
                ),
                const Icon(
                  Icons.dark_mode,
                  color: Colors.white,
                ),
              ],
            ),
          ),

          Positioned(
            left: 24,
            bottom: 25,
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 55,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),

          const Positioned(
            left: 130,
            bottom: 45,
            child: Text(
              'Huỳnh Ngọc Hiếu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}