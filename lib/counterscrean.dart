import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScrean extends StatefulWidget {
  @override
  CounterScrean_State createState() => CounterScrean_State();
}

class CounterScrean_State extends State<CounterScrean> {
  var counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter"),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: Colors.brown,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    while(counter>0)
                    counter--;
                  });
                },
                child: Text("MINUS"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "$counter",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text("PLUS"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
