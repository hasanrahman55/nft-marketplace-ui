import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 66,
              width: 66,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/a.jpg"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                color: Colors.grey[400],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trending Collections",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  "Trending Collections",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                Row(
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
                SizedBox(height: 5),
                Text(
                  "+23,000%",
                  style: TextStyle(fontSize: 12, color: Color(0xff00CB6A)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
