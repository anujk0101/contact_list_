import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes/list_update/insert_update.dart';

class ContactDetails extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     appBar: AppBar(
       title: Text("Contacts"),
     ),
     body: ContactBody(),
   );
  }
}

class ContactBody extends StatefulWidget
{
  int? indx;
  String? name,number,operation;
  ContactBody({this.indx,this.name,this.number,this.operation}) {
    if(operation=="Update")
      {
        contactData[indx!]['name']=name;
        contactData[indx!]['phone']=number;
      }
    //setState(() {});
  }

  List<Map<String, dynamic>> contactData=[
    {
      'name' : 'Anuj',
      'phone' : '9472788783'
    },
    {
      'name' : 'Prashant',
      'phone' : '9472788782'
    },
    {
      'name' : 'Richa',
      'phone' : '9472788781'
    },
    {
      'name' : 'Vishal',
      'phone' : '9472788780'
    }
  ];
  @override
  State<ContactBody> createState() => _ContactBody();
}

class _ContactBody extends State<ContactBody>
{

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.only(top: 11.0),
     child: Column(
       children: [
        ElevatedButton(
          onPressed: (){

        }, child: Text("Add Contact"),
        ),
         ListView.builder(
           shrinkWrap: true,
             itemCount: widget.contactData.length,
             itemBuilder: (_,index){
            return Container(
              margin: EdgeInsets.all(4),
              height: 75,
              width: double.infinity,
              color: Colors.grey.withOpacity(0.5),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 11.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,
                              child: Text(widget.contactData[index]['name'], style: TextStyle(fontSize: 25,color: Colors.white),),
                            ),
                            Container(
                              height: 35,
                              child: Text(widget.contactData[index]['phone'], style: TextStyle(fontSize: 25,color: Colors.white),),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 11.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Container(
                                child: Text("Update",style: TextStyle(color: Colors.black,fontSize: 22),),
                                height: 30,
                                alignment: Alignment.center,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                              ),
                              onTap: ()
                              {
                               // Navigator.push(context, MaterialPageRoute(builder: (_) => InsertUpdate(btnPressed: 2, name: contactData[index]['name'], number: contactData[index]['phone'],indx: index,)));
                                Navigator.push(context, MaterialPageRoute(builder: (_) => InsertUpdate(btnPressed: 2, name: widget.contactData[index]['name'], number: widget.contactData[index]['phone'],indx: index,)));
                              },
                            ),
                            InkWell(
                              child: Container(
                                child: Text("Delete",style: TextStyle(color: Colors.black,fontSize: 22),),
                                height: 30,
                                alignment: Alignment.center,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                              ),
                              onTap: ()
                              {
                                    widget.contactData.removeAt(index);
                                    setState(() {

                                    });
                              },
                            ),
                          ],
                        ),
                      ))

                ],
              ),
            );
         }),


       ],
     ),
   );
  }


/*  Widget updateBtn() {
    return InkWell(
      child: Container(
        child: Text("Update",style: TextStyle(color: Colors.black,fontSize: 22),),
        height: 30,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white
        ),
      ),
      onTap: ()
      {
        // Navigator.push(context, MaterialPageRoute(builder: (_) => InsertUpdate(btnPressed: 2, name: contactData[index]['name'], number: contactData[index]['phone'],indx: index,)));
        Navigator.push(context, MaterialPageRoute(builder: (_) => InsertUpdate(btnPressed: 2, name: widget.contactData[index]['name'], number: widget.contactData[index]['phone'],indx: index,)));
      },
    );
  }*/
}