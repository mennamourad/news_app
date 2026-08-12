import 'package:flutter/material.dart';
class SearchResults extends StatelessWidget {
  const SearchResults({super.key, required this.news, required this.date, required this.img});
  final String news;
  final String date;
  final String img;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(news,style:
                TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                Text(date,style:
                TextStyle(fontSize: 12,color: Color(0xff6D6265)),)
              ],
            ),
          ),
          Expanded(flex: 1,child: Image.asset(img))
        ],
      ),
    );
  }
}
