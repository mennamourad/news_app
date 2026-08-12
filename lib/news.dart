import 'package:flutter/material.dart';
import 'package:second_project/search.dart';
import 'package:second_project/widget/new_items.dart';
import 'package:second_project/newdetails.dart';

class News extends StatefulWidget {
  News({super.key});

  @override
  State<News> createState() => _MainNewsState();
}

class _MainNewsState extends State<News> {
  int selected = 0;
  final List<String> names = ["All","Politic","Sport","Education"];

  final List<String> labels = ["Rana Mohy","Rana Mohy","Rana Mohy","Rana Mohy"];

  final List<String> content =
  ["Chhattisgarh Polls: Ex Cong\n MLA Blames TS Deo For Losing\n Power",
    "Chhattisgarh Polls: Ex Cong\n MLA Blames TS Deo For Losing\n Power",
    "CM Announcement: Rajasthan\n BJP Chief on Delay in Govt\n Formation",
    "CM Announcement LIVE: BJP\n Legislative Party Meeting for\n Chhattisgarh Tomorrow",];

  final List<String> date = ['June 13,2024','June 12,2024','June 11,2024','June 10,2024'];

  final List<String> img =
  ["assets/images/Rectangle 3 (1).png",
    "assets/images/Rectangle 2.png",
    "assets/images/Rectangle 3 (2).png",
    "assets/images/Rectangle 3 (3).png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade200 ,
      body: Column(
        spacing: 0,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 46,
                right: 18,
                left: 18,
                bottom: 2
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.menu,color: Colors.black,),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                    child: GestureDetector(onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchScreen()));
                    },child: Icon(Icons.search,color: Colors.black,))),

                    SizedBox(width: 15,),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.notifications_none_outlined,color: Colors.black,),
                    ),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            title: Text("Breaking News",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),

    trailing:Text("Show More",style: TextStyle(color: Color(0xff2C57F0),fontSize: 12,fontWeight: FontWeight.w600,),)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/Rectangle 1.png"),
          ),

          SizedBox(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  final isSelected = selected == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        decoration:BoxDecoration(
                            color: isSelected
                                ? Color(0xffFFA500)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            border: BoxBorder.all(color: Colors.black)
                        ),
                        child: Text(
                          names[index],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20,
            child: ListTile(
              title:
              Text("News for you",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
              trailing:
              Text("Show More",style: TextStyle(color: Color(0xff2C57F0),fontSize: 12,fontWeight: FontWeight.w600,),),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 24),
              itemCount: labels.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewsDetails(
                        img:img[index] ,
                        label:labels[index] ,
                        date: date[index],
                        content: content[index],

                      ),));
                    },
                    child: NewsForYou(img: img[index], label: labels[index], content: content[index], date: date[index]));
              },),
          )
        ],
      ),
    );
  }
}
