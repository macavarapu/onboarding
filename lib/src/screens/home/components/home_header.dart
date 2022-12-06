import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween
        ,
        children: [
          SearchFiled(),
          IconButton(
            onPressed: (){},

            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.notification_add)),
        ],
      ),
    );
  }

  SearchFiled() {}
}




