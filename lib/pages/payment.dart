import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method'),),

        body: Card(          
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
        
          child: Container(
            padding: EdgeInsets.all(20.0),
            height: 280.0,
            color: Colors.black26,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage("images/card.png"), height: 100.0,),
                Text('Payment method that is verified & Accepted', style: TextStyle(fontSize: 15.0, color: Colors.white),),
                

                SizedBox(height: 10.0,),
                Text('Credit Card', style: TextStyle(color: Colors.white, 
                fontSize: 25.0, fontWeight: FontWeight.bold),),

                ButtonBar(
                  children: [
                    FlatButton(onPressed: (){}, 
                    child: Text('Accept'),color: Colors.purple,
                    textColor: Colors.white,),

                    FlatButton(onPressed: (){}, 
                    child: Text('Disagree'),color: Colors.red,
                    textColor: Colors.white,)
                  ],
                )

              ],
            ),
          ),),
    );
  }
}