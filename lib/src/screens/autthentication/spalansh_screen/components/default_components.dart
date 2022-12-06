import 'package:flutter/material.dart';
class DefaultButton extends StatelessWidget {
const DefaultButton({
Key? key,
  required this.text,
  required this.press,
  // required this.press;
}) : super(key: key);
final String text;
final function press;

@override
Widget build(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: 60,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200),

          ),
          backgroundColor: Color(	0xfff44336),

          minimumSize:
          Size(250, 40) // put the width and height you want
      ),
      onPressed: (){},
      child: Text(
        text,
        style: TextStyle(
          fontSize:15,
          color: Colors.white,
        ),
      ),
    ),


  );


}
}

class function {
}

