import 'package:flutter/material.dart';

import '../../forgot_password/forgot_password_screen.dart';
class BodyItem extends StatelessWidget {
  const BodyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Welcom Back",
                    style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Text("Singn in with your email and password\nor continue with socialmedia,,",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SignForm(),
                ],
              ),
            ),
          ),
        ),
    );
  }

}
class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
 //final _Formkey=GlobalKey<FormState>[];

  final List<String>errors=[];


get value => null;

//  get kPrimarycolor => null;
  @override
  Widget build(BuildContext context) {

    return Form(
     // key: _Formkey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),


            TextFormField(
              obscureText: true,
              validator: (Value){
                if (Value!.isEmpty){
                  setState(() {
                    var erros;
                    var kEmailNullError;
                    erros.add(kEmailNullError);
                  });
                };
              },
              decoration: InputDecoration(

                labelText: "Email",
                hintText: "Enter your email",

      ///if you was using to last version flutter then lable text in hint text show like
                floatingLabelBehavior: FloatingLabelBehavior.always,

                suffixIcon: Icon(Icons.inbox_outlined),
                contentPadding: EdgeInsets.symmetric(horizontal:40,vertical: 20 ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 30,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 30,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              obscureText: true,
              validator: (Value){
                if (Value!.isEmpty){
                  setState(() {
                    var erros;
                    var kEmailNullError;
                    erros.add(kEmailNullError);
                  });
                };
              },
              decoration: InputDecoration(
                labelText: "password",
                hintText: "Enter your pasword",
                ///if you was using to last version flutter then lable text in hint text show like
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.lock_outline),
                contentPadding: EdgeInsets.symmetric(horizontal:40,vertical: 20 ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 30,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide(color: Colors.grey),
                  gapPadding: 30,
                ),

              ),
            ),
    SizedBox(
      height: 60,
    ),
    Row(
      children: [
        Checkbox(
            value: false,
            onChanged: (value){}
        ),

        Text('Remember me'),
        Spacer(),
        Text('Forget possword',
          style: TextStyle(
              decoration: TextDecoration.underline
        ),
        ),

      ],
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
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ForgotScreen ()));
        },
        child: Text("Continue",style: TextStyle(fontSize: 20,color: Colors.white,

        ),
        ),


    ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
           // Image.asset("assets/icons/google.png",),
           Icon(Icons.apple,size: 30,),

                Icon(Icons.facebook,size: 30,),
                Icon(Icons.whatsapp,size: 30,),

              ],
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Text("Don't have an account?  ",style: TextStyle(fontSize: 20),),
                Text("Sin up? ",style: TextStyle(fontSize: 20,color: Colors.orange),),
              ],
            ),

           // Text("Sin up? ",style: TextStyle(fontSize: 20,color: Colors.orange),),




          ],
        ),
    );
  }
}

