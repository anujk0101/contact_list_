import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:notes/Screens/add_notes.dart';

class DataList {
 static List<Map<String, dynamic>> noteData=[
    {'title' : 'title',
      'description' :'description',
      'date' : '20-Jan-2023'
    },
    {
      'title' : 'title',
      'description' :'description',
      'date' : '20-Jun-2023'
    },

  ];
}

class HomePage extends StatelessWidget
{
  //List<Map<String, dynamic>> notesData=[];
  /*List<Map<String, dynamic>> noteData=[
    {'title' : 'title',
    'description' :'description',
      'date' : '20-Jan-2023'
    },
    {
      'title' : 'title',
      'description' :'description',
      'date' : '20-Jun-2023'
    },

  ];*/
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notes", style: TextStyle(fontSize: 32,color: Colors.white),),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: Icon(Icons.search, color: Colors.white,))
                ],
              ),
              SizedBox(height: 10,),
              Expanded(
                child: GridView.builder(
                    itemCount: DataList.noteData.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 11,
                        crossAxisSpacing: 11
                    ),
                    itemBuilder: (_,index){
                      return Container(
                        height: 80,
                        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(DataList.noteData[index]['title']),
                              Text(DataList.noteData[index]['date'], style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => AddNotes()));

              }, child: Text("Create a note")),
              /* FloatingActionButton(
                      child: Text("+"),
                      onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => AddNotes()
                          )
                      );
                  }),*/

            ],
          ),
        ),
      ),
    );
  }
}

///body