import "package:flutter/material.dart";
import "package:flutter_application_1/util/hayatiUtil.dart";

class Dashboard extends StatelessWidget {
  Widget paddedText(String text, double horizontalPadding, double fontSize,
      FontWeight fontWeight) {
    return Padding(
      padding: EdgeInsets.only(left: horizontalPadding),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }

  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  List belanjaItem = [
    ["Produk 1", "lib/hayati/1.jpg"],
    ["Produk 2", "lib/hayati/2.jpg"],
    ["Produk 3", "lib/hayati/3.jpg"],
    ["Produk 4", "lib/hayati/4.jpg"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/outline/png/128/chevron-down-outline.png',
                  height: 25,
                ),
                Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.grey[800],
                ),
              ],
            ),
          ),
          Container(
            child: Row(children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Text("Welcome!",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
              ),),
            ]),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children:
              List.generate(
                belanjaItem.length, (index)
                {
                return Padding(padding: EdgeInsets.all(8.0),
                child: hayatiUtil(hayatiName: belanjaItem[index][0], iconPath: belanjaItem[index][1]));
              }),)
            )
          ),
          Container(
            child: Row(children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Text("Apa Yang Terbaru?",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
              ),),
            ]),
          ),
        ],
      ),
    ));
  }
}
