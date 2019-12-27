import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = "あなたの名前を教えてください。";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("はじめてのアプリ"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                _textHeader,
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 15.0),
              controller: _textEditingController,
            ),
            Expanded(child: _imageWidget),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () => _onClick(),
                child: Text(
                  "おしてね",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onClick() {
    setState(() {
      var inputText = _textEditingController.text;
      _textHeader = "こんにちは！$inputTextさん";
      _imageWidget = Image.asset("assets/images/hello.png");
    });
  }
}
