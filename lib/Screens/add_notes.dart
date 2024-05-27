import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';



class AddNotes extends StatelessWidget
{
  var tfTitleControler=TextEditingController();
  var tfDateControler=TextEditingController();
  var tfDescriptionControler=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              TextField(
                controller: tfTitleControler,
                decoration: InputDecoration(
                  labelText: 'Title'
                ),
              ),
              SizedBox(height: 11,),
              TextField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: 'Enter date here'
                ),
              ),
              SizedBox(height: 11,),
              TextField(
                controller: tfDescriptionControler,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Enter your Notes here',

                ),
              ),
              ElevatedButton(onPressed: (){
                DataList.noteData.add({'title' : 'title123',
                  'description' :'description123',
                  'date' : '20-Jan-2023111'});

                Navigator.pop(context);


              }, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}