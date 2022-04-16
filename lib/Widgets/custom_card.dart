import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, bottom: 16),
      child: Container(
        height: 384,
        width: 267,
        decoration: BoxDecoration(
          color: const Color(0xff253341),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 259,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/a.jpg'),
                        fit: BoxFit.cover,
                      ),
                      color: Color(0xff283341),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                  top: 26,
                  left: 30,
                  child: Container(
                    height: 22,
                    width: 48,
                    child: Center(
                      child: Text(
                        "Art",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xff313B45).withOpacity(0.5)),
                  ),
                ),
                Positioned(
                  right: 27,
                  top: 25,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mosu#3300",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "120 day left",
                    style: TextStyle(
                      color: Color(0xffAAB8C2),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/a.jpg"),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.grey[400],
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Karafuru",
                        style: TextStyle(color: Color(0xffAAB8C2)),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 86,
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
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
