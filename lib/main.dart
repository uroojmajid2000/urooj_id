import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UroojCard(),
  ));
}

class UroojCard extends StatefulWidget {
  @override
  State<UroojCard> createState() => _UroojCardState();
}

class _UroojCardState extends State<UroojCard> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Urooj_id'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        elevation: 0.0,
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        setState(() {
          ninjalevel += 1;
        });
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.grey[800],
    ),
    body: Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
      child: Column(
            children: <Widget> [



              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/thumb.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              Text('Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
              ),
              SizedBox(height: 10.0,),
              Text('urooj-majid',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0,),

              Text('Urooj Level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Text('$ninjalevel',

                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Icon(Icons.email,
                  color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0,),
                  Text('uroojmajid@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                    ),
                  ),



                ],

              ),



            ],
          ),

      ),


    );
  }
}
