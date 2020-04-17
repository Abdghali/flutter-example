import 'package:assinment1/person.dart';
import 'package:flutter/material.dart';

import 'Secreen1.dart';

class Secreen2 extends StatefulWidget {
  Person person;
  Secreen2({this.person});

  @override
  _Secreen2State createState() => _Secreen2State();
}

class _Secreen2State extends State<Secreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: true,
          title: Text(
            "Assignment1",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.input),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
        body: ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 50,left: 20, right: 20),
          child: Container(

           color: Colors.white,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  child: Row( mainAxisAlignment: MainAxisAlignment.center ,children: <Widget>[Text("Student information" ,style: TextStyle(fontSize: 20))],),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 8 ,bottom: 8),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start  ,children: <Widget>[Text("Full name: ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),Text(widget.person.fullName,style: TextStyle(fontSize: 16))],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 8 ,bottom: 8),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start  ,children: <Widget>[Text("Eamail: ", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),Text(widget.person.email,style: TextStyle(fontSize: 16))],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 8 ,bottom: 8),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start  ,children: <Widget>[ Text("City: ", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),Text(widget.person.city,style: TextStyle(fontSize: 16))],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 8 ,bottom: 50),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start  ,children: <Widget>[ Text("Speshialist: ", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),Text(widget.person.specialist,style: TextStyle(fontSize: 16)),],),
                ),
              ],
            ),



          ),
        ),
        SizedBox(
          height: 166,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
          child: Material(
            color: Colors.blue.withOpacity(0.4),
            elevation: 0.0,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Secreen1(),
                    ));
              },
              minWidth: MediaQuery.of(context).size.width,
              child: Text(
                "Edit the information ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
