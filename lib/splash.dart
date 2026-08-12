import 'package:flutter/material.dart';
import 'package:second_project/news.dart';

import 'nav.dart';
class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NavScreen()));
    }
      ,child: Scaffold(backgroundColor:Color(0xff001F3F),
        body: Center(

            child: Row(
              children: [
                Image.asset("assets/images/logo 1 (2).png"),
                Image.asset("assets/images/Vector (2).png"),
              ],
            ),
          ),
          ),
        );
  }
}


