import 'package:flutter/material.dart';
class SplanshContent extends StatelessWidget {
  const SplanshContent({
    Key? key,
    required this.text,
    required this.image,

  }) : super(key: key);
  final String text,image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        Spacer(),
        Text("ToKoTo",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2,),
        Image.asset(image,
         // "assets/image/finger.png",
          height: 265,
          width: 235,

        ),


      ],
    );
  }
}
