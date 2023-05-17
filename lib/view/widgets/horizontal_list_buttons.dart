import 'package:flutter/material.dart';
import 'package:mahra/constant_colors.dart';

class MyHorizontalList extends StatefulWidget {
  final List<String> items = [
    'تفاح',
    'عنب',
    'مانجة',
    'بطيخ',
    'خوخ',
    'رمان',
    'تين',
    'مشمش',
    'كمثرى',
    'جوافة',
    'بلح',
  ];

  @override
  _MyHorizontalListState createState() => _MyHorizontalListState();
}

class _MyHorizontalListState extends State<MyHorizontalList> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Material(
              color: _selectedIndex == index ? appBarColor : disableButtonColor,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Center(
                    child: Text(
                      widget.items[index],
                      style: TextStyle(
                        color: _selectedIndex == index
                            ? Colors.white
                            : Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
