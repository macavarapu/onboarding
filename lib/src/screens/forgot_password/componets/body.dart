import 'package:flutter/material.dart';

import '../../login_screen/components/login_success_screen.dart';
class BodyList extends StatelessWidget {
  const BodyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
           children: [
             SizedBox(
               width: double.infinity,
              // height: 30,
             ),
             Text("Forgot Password",
               style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.normal,
               ),
             ),
             Text("Please enter you email and we will send\n you a like retun  to account",
               textAlign: TextAlign.center,
             ),
             ForgotPassForm(),
           ],
          ),
        ),
      ),
    );

  }
}
class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final List<String>errors=[];

  @override
  Widget build(BuildContext context) {
    return Form(
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
              height: 40,
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  LoginSuccessScreen ()));
              },
              child: Text("Continue",style: TextStyle(fontSize: 20,color: Colors.white,

              ),
              ),


            ),
            SizedBox(
              height: 40,
            ),

            Row(
              children: [
                Text("Don't have an account?  ",style: TextStyle(fontSize: 20),),
                Text("Sin up? ",style: TextStyle(fontSize: 20,color: Colors.orange),),
              ],
            ),



          ],
        ),

    );
  }
}

