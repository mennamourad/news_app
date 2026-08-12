import 'package:flutter/material.dart';
class NewsForYou extends StatelessWidget {
  const NewsForYou({super.key, required this.img, required this.label, required this.content, required this.date});
  final String img;
  final String label;
  final String content;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 10,
        left: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          Expanded(child: Image.asset(img)),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(label,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(content,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                    Text(date,style: TextStyle(color: Color(0xffD2B0B0),fontSize: 10,fontWeight: FontWeight.bold),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
