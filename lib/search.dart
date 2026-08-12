import 'package:flutter/material.dart';
import "package:second_project/search_result.dart";

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      appBar: AppBar(
        backgroundColor:Color(0xffdfdfdf) ,
        title: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller,
                onFieldSubmitted: (value) {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchResult(),));
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Color(0xff8A8184),),
                  hintText:"Search",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff8A8184),
                      width:10,
                    ),
                  ),
                ),
              ),

            ),
            SizedBox(width: 10,),
            GestureDetector(
                onTap: () {
                  controller.text = "";
                },
                child: Text("Cancel",style: TextStyle(color: Color(0xff0E0AB1),fontSize: 14),))
          ],
        ),
      ),

    );
  }
}
