import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
        backgroundColor: Colors.redAccent,),

        body: new ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          return Container(
            height: 130,
            child: Card(
//                color: Colors.blue,
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('images/garage_new.jpeg'),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.white)
                            ]),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      return showDialog<void>(
                        context: context,
                          barrierDismissible: false,
                          builder: (BuildContext conext) {
                          return AlertDialog(
                            title: Text('Service status'),
                            content:
                                const Text('This service is no longer available'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Ok'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(30.0),
                        child: Chip( 
                          label: Text('brake Service', style: TextStyle(color: Colors.white),),
                          shadowColor: Colors.black,
                          backgroundColor: Colors.blueAccent,
                          elevation: 10,
                          autofocus: true,
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );

  }
}