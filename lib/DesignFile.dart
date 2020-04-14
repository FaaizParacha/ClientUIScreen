import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:saeedproject/constant.dart';
class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  VoidCallback _showPersBottomSheetCallBack;

  @override
  void initState() {
    super.initState();
    _showPersBottomSheetCallBack = _showBottomSheet;
  }

  void _showBottomSheet() {
    setState(() {
      _showPersBottomSheetCallBack = null;
    });
    _scaffoldKey.currentState
        .showBottomSheet((context) {
      return new Container(
          height: 300.0,
          decoration: BoxDecoration(
              color: Colors.blueGrey.shade50,
            borderRadius: bottomsheetRadius
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("About",style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30.0
                    )),
                    Icon(Icons.more_vert,color: Colors.black,),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    child: RaisedButton(
                      color: Colors.blue.shade200,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: radius
                      ),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: 60.0,
                    child: RaisedButton(
                      color: Colors.indigo,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: radius
                      ),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: 60.0,
                    child: RaisedButton(
                      color: Colors.grey.shade200,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: radius
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
      );
    }).closed
        .whenComplete(() {
      if (mounted) {
        setState(() {
          _showPersBottomSheetCallBack = _showBottomSheet;
        });
      }
    });
  }

  void _showModalSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: bottomsheetRadius
        ),
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Feed",style: TextStyle(
                        color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0
              ),),
                  ),
                  sizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/download.jfif"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Noell Blue",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                          ),),
                          Text("Yesterday at 8:14 PM",style: TextStyle(
                            color: Colors.grey
                          ),),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 80.0)),
                      Icon(Icons.more_vert,color: Colors.white,),
                    ],
                  ),
                  sizedBox,
                  Row(
                    children: <Widget>[
                      Text("Blue magic!",style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                      ),),
                      sizedboxWidth,
                      Image.asset("assets/rhombus.png",color: Colors.blue,height: 15.0,width: 20.0,),
                      sizedboxWidth,
                      Image.asset("assets/rhombus.png",color: Colors.blue,height: 20.0,width: 25.0,),
                      sizedboxWidth,
                      Text("Model @dejyosha",style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                      ),)
                    ],
                  ),
                  sizedBox,
                  Image.asset("assets/mario.jfif",fit: BoxFit.fitWidth,)
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: RaisedButton.icon(
                onPressed:(){},
              icon: Icon(Icons.check),
              color: Colors.grey.shade100,
              label : Text("Friends",style: TextStyle(color: Colors.black),),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
              ),
                ),
          ),
              Icon(Icons.more_vert,color: Colors.black,),
        ],
      ),
      body: Column(
        children: <Widget>[
          sizedBox,
          CircleAvatar(
            backgroundImage: AssetImage("assets/download.jfif"),
            radius: 70.0,
          ),
          sizedBox,
          Text("Noell Blue",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 40.0
          ),),
          sizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.chat_bubble_outline,size: 25.0,),
              SizedBox(width: 10.0,),
              Text("Message",style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900
              ),),
            ],
          ),
          sizedBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new RaisedButton(
                onPressed: _showPersBottomSheetCallBack,
                child: new Text("About"),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 10.0),
              ),
              new RaisedButton(
                onPressed: _showModalSheet,
                child: new Text("Feed"),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}