import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        leading: Icon(Icons.home),
        title: Center(
          child: Text("Tugas 9 Flutter"),
        ),
        actions: <Widget>[Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Image(
            image: NetworkImage(
                "https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 "),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text("Wisata Populer"),
                  ),
                  WisataPopulerHorizontal(),
                  WisataPopulerVertical(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WisataPopulerHorizontal extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      // color: Colors.orange,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                // color: Colors.orange,
                // height: 50,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/46253/mt-fuji-sea-of-clouds-sunrise-46253.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                        width: 100,
                        height: 500,
                      ),
                    ),
                    Text("Gunung Fuji")
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                // color: Colors.orange,
                // height: 50,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/726281/pexels-photo-726281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500 "),
                        width: 100,
                        height: 500,
                      ),
                    ),
                    Text("Bali")
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                // color: Colors.orange,
                // height: 50,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/2116719/pexels-photo-2116719.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        width: 100,
                        height: 500,
                      ),
                    ),
                    Text("Jakarta")
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                // color: Colors.orange,
                // height: 50,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/58603/pexels-photo-58603.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260 "),
                        width: 100,
                        height: 500,
                      ),
                    ),
                    Text("Kuala Lumpur")
                  ],
                ),
              ),
              Center(
                child: Icon(Icons.more_horiz),
              )
              // Image(
              //   image: NetworkImage(
              //       "https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 "),
              //   width: 100,
              //   height: 100,
              // )
            ],
          ),
        ],
      ),
    );
  }
}

class WisataPopulerVertical extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/3145153/pexels-photo-3145153.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Bandung"),
                    RaisedButton(
                      color: Colors.blue,
                      child: Icon(Icons.check),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/758742/pexels-photo-758742.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Palembang"),
                    RaisedButton(
                      color: Colors.blue,
                      child: Icon(Icons.check),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/654/clouds-cloudy-agriculture-farm.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Garut"),
                    RaisedButton(
                      color: Colors.blue,
                      child: Icon(Icons.check),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
