import 'package:flutter/material.dart';
import 'package:second_project/news.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key,required this.img, required this.label, required this.content, required this.date,});

  final String img;
  final String label;
  final String content;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffdfdfdf) ,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 45,
                  right: 18,
                  left: 18
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
                  ),
                  Text("News Details",style: TextStyle(color:Colors.black,fontSize:14,fontWeight: FontWeight(700) ),),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.bookmark_border_outlined,color: Colors.black,),
                  ),
                ],
              ),
            ),
SizedBox(height: 10,),
             Image.asset(img,fit: BoxFit.cover),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rana Mohy",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Icon(Icons.favorite_border_rounded,color: Colors.black),
                      Text("204",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              ),
            ),
            Text(content,style: TextStyle(fontSize:16 ,fontWeight:FontWeight.w600 ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("8 min read . Updated: 12 Jun 2024, 11:38 PM IST",
                  style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600)),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Xiaomi India has denied exiting the offline market for smart TV sales.The rebuttal comes in response to a claim made by  Super Plastronics Pvt Ltd chief executive officer, Avneet Singh Marwah,  that Xiaomi had closed its offline television sales last year,  apparently because it had\nceased to serve as a viable business option.\n\nIn a statement shared with FE over email, a company spokesperson said  that, “Xiaomi has a strong retail presence across multiple offline  channels besides Mi stores and Mi Homes including multi-brand stores, Mi  Preferred Partners as well as large format stores like Reliance,  Vijay Sales, Poorvika, Sangeetha, etc,” adding that brick-and-mortar  channels have been contributing to 50 percent of its smart TV sales in  the country.\n\nUnderscoring the importance of offline to showcase “the superior quality  of Xiaomi smart TVs, and compare it with other marginal, fragmented  players,” the spokesperson reiterated that Xiaomi will continue to  strengthen its offline business across all categories, smart TVs  included, giving the best experience and choices across channels to its  customers.",
                style: TextStyle(fontSize: 14),),
            )
          ],
        ),
      ),
    );
  }
}
