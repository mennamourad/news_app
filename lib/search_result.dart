import 'package:flutter/material.dart';
import 'package:second_project/search_result.dart';
import 'package:second_project/widget/results.dart';

class SearchResult extends StatelessWidget {
  SearchResult({super.key});

  final List<String> content =
  [ "Chhattisgarh Polls: Ex Cong\nMLA Blames TS Deo For ",
    "Chhattisgarh Polls: Ex Cong\nMLA Blames TS Deo For ",
    "Chhattisgarh Polls: Ex Cong\nMLA Blames TS Deo For ",
    "Chhattisgarh Polls: Ex Cong\nMLA Blames TS Deo For ",];

  final List<String> labels = ["Rana Mohy","Rana Mohy","Rana Mohy","Rana Mohy"];

  final List<String> date = ['May 3, 2023','May 7, 2023','May 12, 2023','May 12, 2023'];

  final List<String> img =
  [
    'assets/images/Rectangle 3 (4).png',
    'assets/images/Rectangle 2.png',
    'assets/images/Rectangle 2 (2).png',
    'assets/images/Rectangle 2 (1).png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200 ,
      appBar: AppBar(
        backgroundColor: Color(0xffdfdfdf) ,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_sharp,color: Colors.black,)),
        title: Text("Search Results",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 18),),
        centerTitle: true,
      ),

      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: date.length,
        itemBuilder: (context, index) {
          return SearchResults(news: content[index], date: date[index], img: img[index]);
        },),
    );
  }
}
