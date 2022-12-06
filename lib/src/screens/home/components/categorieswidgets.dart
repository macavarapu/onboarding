
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categorieswidgets extends StatelessWidget {

  const Categorieswidgets({
    Key? key,

  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    List<Map<String,dynamic>>Categorieswidgets=[
      {"icon":" assets/icons/Flase Deals.png","text":"Flase Deals"},
      {"icon":"assets/icons/3.png","text":"icons"},
      {"icon":"assets/icons/2.png","text":"icons"},
      {"icon":"assets/icons/1.png","text":"icons"},
    ];

    var pngPicture;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 55,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //  child: pngPicture.assets(Categorieswidgets[0]["Flase Deals"]),
                    ///color: Colors.cyan,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text((Categorieswidgets[0]["text"]),textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
