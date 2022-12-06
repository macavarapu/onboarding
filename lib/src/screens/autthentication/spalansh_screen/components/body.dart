import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../../../singn_in/singn_in_screen.dart';


//////This is the best practies


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentpage=0;
  List<Map<String,String>> sPlashData=[
    {
      "text":"Wellcome to Tokoto 'let's shopping",
      "image":"assets/image/finger.png"
    },
    {
      "text":"Wellcome to Tokoto 'let's shopping",
      "image":"assets/image/finger.png"
    },
    {
      "text":"Wellcome to Tokoto 'let's shopping",
      "image":"assets/image/finger.png"
    },
    {
      "text":"Wellcome to Tokoto 'let's shopping",
      "image":"assets/image/finger.png"

    },
  ];

  get kPrimecolor => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children:<Widget> [

            Expanded(
              flex: 3,
              child: PageView.builder(
                itemCount: sPlashData.length,
                itemBuilder: (context,Index)=> SplanshContent(
                     image:"assets/image/finger.png",
                  text: "Wellcome to Tokoto 'let's shopping"

                ),


              ),

            ),
            Expanded(
              flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Spacer(),
                      Row(
                        children: List.generate(
                          sPlashData . length,
                                (index) => buildDot(index: index),
                        ),
                      ),
                       Spacer(flex: 4,),
                      // DefaultButton(
                      //   text: "Continue",
                      //   press: (){},
                      // ),
                      Spacer(),

                      SizedBox(
                        width: double.infinity,
                        height: 60,
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(200),

                          ),
                            backgroundColor: Color(	0xfff44336),

                            minimumSize:
                            Size(250, 40) // put the width and height you want
                        ),

                             onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  SingnInScreen()));
                        },
                        child: Text("Continue",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,

                        ),
                          ),
                      ),
                           Spacer(),

                    ],
                  ),
                ),
            ),
          ],
        ),
      ),

    );

  }



 AnimatedContainer  buildDot({required int index}){
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 15),
      height: 6,
      width: currentpage==index?20:6,
      decoration: BoxDecoration(
        color:currentpage== index?kPrimecolor: Color(	0xfff44336),
        borderRadius: BorderRadius.circular(13),
      ),
      duration:kThemeAnimationDuration ,
      
    );
  }


}
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key, required this.text, required this.press
  }) : super(key: key);
  final String text;
  final function press;

  String? get teext => null;
////function?get press=>null;
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
       onPressed:(){},
       child: Text(
         teext!,
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
         //"assets/image/finger.png",
          height: 265,
          width: 235,

        ),


      ],
    );

  }
}
