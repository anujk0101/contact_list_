import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:notes/list_update/contact_details.dart';

class InsertUpdate extends StatelessWidget
{
  int btnPressed;
  int? indx;
  String name,number;
  InsertUpdate({required this.btnPressed, required this.name, required this.number ,this.indx});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Update"),),
      body: InsertUpdateBody(btnPressed: btnPressed,name: name,number: number, indx: indx,),
    );
  }
}

class InsertUpdateBody extends StatelessWidget
{
  int btnPressed;
  int? indx;
  String name,number;
  InsertUpdateBody({required this.btnPressed, required this.name, required this.number ,this.indx})
  {
    if(btnPressed==2) {
      tfNameControler.text = name;
      tfPhoneControler.text=number;
    }
  }
  var tfNameControler=TextEditingController();
  var tfPhoneControler=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            TextField(
              controller: tfNameControler,

            ),
            TextField(
              controller: tfPhoneControler,
            ),
            ElevatedButton(onPressed: (){
              //ContactBody(indx: indx,name: tfNameControler.text.toString(),number: tfPhoneControler.text.toString(),operation: "Update",);
               // Navigator.push(context, MaterialPageRoute(builder: (_) => ContactBody(indx: indx,name: tfNameControler.text.toString(),number: tfPhoneControler.text.toString(),operation: "Update",)));
            Navigator.pop(context);
            }, child: Text("Submit"),

            )
          ],
    );
  }
}