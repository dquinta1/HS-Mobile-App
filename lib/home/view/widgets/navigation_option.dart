import 'package:flutter/material.dart';

class NavigationOption extends StatelessWidget {
  final String title;
  final bool selected;
  final Function() onSelected;

  const NavigationOption({
    required this.title,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: selected ? Colors.blue : Colors.grey[400],
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (selected)
            Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            )
          else
            Container(),
        ],
      ),
    );
  }
}
