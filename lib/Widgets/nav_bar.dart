import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 44,
          width: 93,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/b.png')),
              SizedBox(width: 10),
              Text(
                "26,000",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          height: 52,
          width: 52,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/a.jpg"),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
