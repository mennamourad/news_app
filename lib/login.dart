import 'package:flutter/material.dart';
import 'package:second_project/nav.dart';

import 'create_account.dart';
import 'splash.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70,),

            Text("Login to your account" ,style: TextStyle(
              color: Colors.black,
              fontSize: 32,
              //fontWeight: FontWeight.w600,
              fontWeight: FontWeight.bold,
            ),),

            Text("It’s great to see you again.",style: TextStyle(
              color: Color(0xff808080),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),),

            SizedBox(height: 30,),


            Text("User Name",style: TextStyle(
              color: Color(0xff1A1A1A),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),

            TextFormField(decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffE6E6E6),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffE6E6E6))),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffE6E6E6))),
                hintText: "Enter your email address",
                hintStyle: TextStyle(
                    color: Color(0xff999999)
                )
            ),),

            SizedBox(height: 30,),

            Text("Password",style: TextStyle(
              color: Color(0xff1A1A1A),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),

            TextFormField(decoration: InputDecoration(
                suffixIcon: Icon(Icons.visibility_off_rounded,color: Color(0xff808080),),
                filled: true,
                fillColor: Color(0xffE6E6E6),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffE6E6E6))),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xffE6E6E6))),
                hintText: "Enter your email address",
                hintStyle: TextStyle(
                    color: Color(0xff999999)
                )
            ),),

            SizedBox(height: 70,),

            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavScreen()));
              }
              ,child: ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavScreen()));
            },
              child: Text("Sign In",style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),),style:ElevatedButton.styleFrom(
                backgroundColor: Color(0xff3669C9),
                fixedSize: Size.fromHeight(50),
              ) ,),
            ),

            SizedBox(height: 400,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?",style: TextStyle(
                  color: Color(0xff808080),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CreateAccount()));
                  }
                  ,child: Text("Join",style: TextStyle(
                  color: Color(0xff1A1A1A),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),),
                )
              ],
            )


          ],
        ),
      ),
    );

  }
}
