import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
    home: MyFlatButtonExample(),
  ));
}



class MyFlatButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 2.0,
        centerTitle: true,
        title: const Text(
          "Feedback",
          style:  TextStyle(color: Colors.black, fontWeight:FontWeight.bold
          ),
        ),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
        ),
      ),


      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10.0),
            Text("Please select the type of the feedback", style: TextStyle(
                color: Color(0xffc5c5c5)
            ),
            ),
            SizedBox(height: 25.0),
            buildCheckItem("Login Trouble"),
            buildCheckItem("Related to phone number"),
            buildCheckItem("Personal Profile"),
            buildCheckItem("Other Issue"),
            buildCheckItem("Suggestions"),
            SizedBox(height: 20.0),
            buildFeedbackForm(),
            SizedBox(height: 20.0),
            buildNumberFeild(),
            Spacer(),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press here
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffe5e5e5),
                  padding: EdgeInsets.all(16.0),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )

            // Expanded(
            //   child: TextButton(
            //     onPressed: () {
            //       // add your code here when button is pressed.
            //     },
            //     style: TextButton.styleFrom(
            //       backgroundColor: Color(0xffe5e5e5),
            //       padding: EdgeInsets.all(16.0),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(8.0),
            //       ),
            //     ),
            //     child: Text(
            //       "Submit",
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // )

            // Row(
            //   children:[
            //     Expanded(
            //       child: FlatButton(
            //         onPressed: (){},
            //         color:Color(0xffe5e5e5),
            //         padding: EdgeInsets.all(16.0),
            //         child: Text("Submit",
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  buildNumberFeild(){
    return TextField(
      style:TextStyle(
        color: Colors.black,
      ) ,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0.0),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(border: Border(
                  right: BorderSide(width: 1.0,color: Color(0xffc5c5c5))
              ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 10.0),
                  Text("+91",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffc5c5c5),
                  ),),
                  Icon(Icons.arrow_drop_down,color: Colors.cyan,),
                  SizedBox(width: 10.0),
                ],
              ),
            ),
            SizedBox(width: 10.0),
          ],
        ),
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0xffc5c5c5),
        ),
        hintText: "Phone Number",
        border: OutlineInputBorder(),
      ),
    );
  }


  buildFeedbackForm() {
    return Container(
      height: 200.0,
      child: Stack(
        children: <Widget>[
          TextField(
            maxLines: 10,
            decoration: InputDecoration(
              hintText: "Please brifly describes the issue",
              hintStyle: TextStyle(
                fontSize: 13.0,
                color: Color(0xffc5c5c5),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe5e5e5)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Color(0xffa6a6a6),
                  ),
                ),
              ),
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffe5e5e5),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add,
                        color: Color(0xffa5a5a5),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text("Upload screenshot (optional)",
                    style: TextStyle(
                      color: Color(0xffc5c5c5),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  buildCheckItem(title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.check_circle, color: Colors.blue),
          SizedBox(width: 10.0),
          Text(title,style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          )
        ],
      ),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}