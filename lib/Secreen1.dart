import 'package:assinment1/Secreen2.dart';
import 'package:assinment1/person.dart';
import 'package:flutter/material.dart';

class Secreen1 extends StatefulWidget {
  @override
  _Secreen1State createState() => _Secreen1State();
}

class _Secreen1State extends State<Secreen1> {
  final _formKy = GlobalKey<FormState>();
  var checkbox = false;

  checkboxChange(bool val) {
    setState(() {
      checkbox = val;
    });
  }

  TextEditingController _fullNameTextEditControler =
      new TextEditingController();
  TextEditingController _emailTextEditControler = new TextEditingController();
  TextEditingController _cityTextEditControler = new TextEditingController();
  TextEditingController _speshialistTextEditControler =
      new TextEditingController();
  GlobalKey<FormState> _DialogKey = GlobalKey();
  bool hidePass = true;
  Person person;

  void _brandAlert() {
    var alert = new AlertDialog(
      content: Text('please fill all feaild'),
      actions: <Widget>[
        FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel")),
      ],
    );
    showDialog(context: context, builder: (_) => alert);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
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
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Form(
                key: _formKy,
                child: ListView(
                  children: <Widget>[
                    /// name text feaild
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 16.0, 2.0, 16.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: ListTile(
                          title: TextFormField(
                            textDirection: TextDirection.ltr,
                            cursorColor: Colors.blue,
                            controller: _fullNameTextEditControler,
                            decoration: InputDecoration(
                              hoverColor: Colors.blue,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid),
                              ),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.6),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid),
                              ),
                              focusColor: Colors.red,
                              labelText: "full name",
                              labelStyle:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return "the Full name feaild cant be embty";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),

                    /// end name text feaild

                    /// email text feaild
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 16.0, 2.0, 16.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: ListTile(
                          title: TextFormField(
                            controller: _emailTextEditControler,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hoverColor: Colors.blue,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid),
                              ),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.6),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid),
                              ),
                              focusColor: Colors.red,
                              labelText: "Eamail",
                              labelStyle:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please the email feaild cant be empty';
                              } else {
                                Pattern pattern =
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                RegExp regex = new RegExp(pattern);
                                if (!regex.hasMatch(value)) {
                                  return 'Please make sure your email address is valid';
                                } else {
                                  return null;
                                }
                              }
                            },
                          ),
                        ),
                      ),
                    ),

                    /// end email text feaild

                    /// City text feaild
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 16.0, 2.0, 16.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: ListTile(
                          title: TextFormField(
                              controller: _cityTextEditControler,
                              decoration: InputDecoration(
                                hoverColor: Colors.blue,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue,
                                      style: BorderStyle.solid),
                                ),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.6),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue,
                                      style: BorderStyle.solid),
                                ),
                                focusColor: Colors.red,
                                labelText: "City",
                                labelStyle:
                                    TextStyle(color: Colors.blue, fontSize: 20),
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'City faild cont be empty';
                                } else
                                  return null;
                              }),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 16.0, 2.0, 16.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: ListTile(
                          title: TextFormField(
                            controller: _speshialistTextEditControler,
                            decoration: InputDecoration(
                              hoverColor: Colors.blue,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid),
                              ),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.6),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid),
                              ),
                              focusColor: Colors.red,
                              labelText: "Speshialist",
                              labelStyle:
                                  TextStyle(color: Colors.blue, fontSize: 20),
                              hintText: "Speshialist",
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Speshialist faild cont be empty';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: checkbox,
                            onChanged: checkboxChange,
                          ),
                          Text(
                            'All feaild data is corrice',
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
                      child: Material(
                        color: Colors.blue.withOpacity(0.4),
                        elevation: 0.0,
                        child: MaterialButton(
                          onPressed: () {
                            person = new Person(
                                _fullNameTextEditControler.text,
                                _emailTextEditControler.text,
                                _cityTextEditControler.text,
                                _speshialistTextEditControler.text);
                            if (_formKy.currentState.validate() && checkbox == true) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Secreen2(person: person),
                                  ));
                            } else {
                              _brandAlert();

                            }
                          },
                          minWidth: MediaQuery.of(context).size.width,
                          child: Text(
                            "push my data",
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

                    /// dfgdf
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
