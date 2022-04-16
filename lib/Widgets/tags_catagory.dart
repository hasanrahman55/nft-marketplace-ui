import 'package:flutter/material.dart';

class TagCatagory extends StatelessWidget {
  const TagCatagory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List _tagName = ['Trending', 'Art', 'Gaming', 'Design'];
    return Container(
      height: 60,
      width: double.infinity,
      child: ListView.builder(
        itemCount: _tagName.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Center(
              child: Text(
                _tagName[index],
                style: const TextStyle(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          );
        },
      ),
    );
  }
}
