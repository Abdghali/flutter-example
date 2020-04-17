import 'package:assinment1/Secreen1.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SnackBar snackBar = null;

  String snackBarText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    snackBarText = "";
  }

  final GlobalKey<ScaffoldState> _ScaffoldKey = new GlobalKey<ScaffoldState>();

  showSankBar() {
    snackBar = SnackBar(
      content: Text(snackBarText),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          _ScaffoldKey.currentState.hideCurrentSnackBar();
        },
      ),
    );
    _ScaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldKey,
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: Text(
          "Assignment1",
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Abd Allh Al Najar",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20, color: Colors.black.withOpacity(0.4)),
              ),
            ),
          ),
          Container(
            //color: Colors.blue,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 1.5,
            child: Image.asset("images/blazer1.jpeg"),
            //  child: ,
          ),
          SizedBox(
            height: 80,
          ),

          /// google and facebook and twetrt circle
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: InkWell(
                  child: new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: AssetImage('images/witicon.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(50.0)),
                      border: new Border.all(
                        color: Colors.blue.withOpacity(0.5),
                        width: 1.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      snackBarText = "Teeter@email.com";
                    });
                    showSankBar();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: InkWell(
                  child: new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: AssetImage('images/google.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(50.0)),
                      border: new Border.all(
                        color: Colors.blue.withOpacity(0.5),
                        width: 1.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      snackBarText = "Google@email.com";
                    });
                    showSankBar();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: InkWell(
                  child: new Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: AssetImage('images/faceicon.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(50.0)),
                      border: new Border.all(
                        color: Colors.blue.withOpacity(0.5),
                        width: 1.0,
                      ),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      snackBarText = "Facebook@email.com";
                    });
                    showSankBar(); // to desply sankBar
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 0.0),
            child: Material(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue.withOpacity(0.9),
              elevation: 0.0,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Secreen1()));
                },
                minWidth: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    "go to secreen1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
