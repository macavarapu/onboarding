import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled/src/screens/autthentication/wigdets/Categorieswidgets.dart';
import 'dart:convert' deferred as convert;
class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  get SectionTitle => null;

 // get kSecondaryColow => null;
 /// get kSecondaryColor => null;
  @override
  Widget build(BuildContext context) {
    var kSecondaryColor;
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Container(
                      width: 300,
                     // height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        onChanged: (value){
                          //////search value
                        },
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText:" Search Products",
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,vertical: 10
                          ),
                        ),
                      ),

                    ),
                    InkWell(
                      onTap:(){} ,
                      child: Icon(Icons.shopping_cart),

                    ),
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.notification_add),
                    ),

                  ],
                ),

              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text.rich(
                  TextSpan(
                    text: "Summer Surpic\n",style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "Casback 20%",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                          )
                      ),
                    ],
                  ),
                ),

                
              ),
             SizedBox(
               height: 20,
             ),
             Categorieswidgets(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Special for you",
                      style: TextStyle(fontSize: 25,
                          color:Colors.black,
                      ),
                    ),
                    Text("See more\n"),
                  ],
                ),

              ),
              SizedBox(
                width: 240,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(

                    children: [
                      Image.asset("assets/image/pc.jpg",
                          fit: BoxFit.cover,
                      ),

                   ///   Image.asset("assets/image/pc.jpg",),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors:[
                              Color(0xff343434).withOpacity(0.4),
                              Color(0xff343434).withOpacity(0.15),
                            ],

                          ),
                        ),
                      ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10,
                            ),
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(color: Colors.white),
                              children: [
                                TextSpan(
                                  text: "Smart all products\n",
                                    style: TextStyle(fontSize:20,
                                        fontWeight:FontWeight.bold ,
                                    ),
                                ),

                                TextSpan(text: "18 Brands"),

                              ],
                            ),

                          ),

                        ),


                    ],

                  ),
                ),

              ),
            SizedBox(
              height: 30,
              
            ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Products",
                      style: TextStyle(fontSize: 25,
                        color:Colors.black,
                      ),
                    ),
                    Text("See more\n"),
                  ],
                ),

              ),
              SizedBox(
                width: 140,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.02,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          // color: kSecondaryColow.withOpection(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset("assets/image/game.jpg"),
                      ),
                    ),
                    Text("Wireless Control",
                      style: TextStyle(fontSize: 18,

                        fontWeight: FontWeight.w600,

                    ),
                      ),
                    Text("\$ Price 600.0"),
                  ],
                ),
              ),



            ],

          ),



        ),


    );
  }


}

