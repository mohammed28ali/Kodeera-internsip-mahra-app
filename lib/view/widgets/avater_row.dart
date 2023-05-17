import 'package:flutter/material.dart';

import '../../constant_colors.dart';

class MyAvatarRow extends StatefulWidget {
  final List<String> items = [
    'التميز العام',
    'التطابق',
    'التعميم',
    'الاختيار',
    'التعريف',
  ];

  @override
  _MyAvatarRowState createState() => _MyAvatarRowState();
}

class _MyAvatarRowState extends State<MyAvatarRow> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildAvatar(0, widget.items[0], disableCircleButtonColor),
        _buildAvatar(1, widget.items[1], disableCircleButtonColor),
        _buildAvatar(2, widget.items[2], disableCircleButtonColor),
        _buildAvatar(3, widget.items[3], disableCircleButtonColor),
        _buildAvatar(4, widget.items[4], disableCircleButtonColor),
      ],
    );
  }

  Widget _buildAvatar(int index, String name, Color color) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: isSelected ? selectedCircleButtonColor : color,
              child: Text(
                name,
                style: TextStyle(
                  color: isSelected ? Colors.white : selectedCircleButtonColor,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
