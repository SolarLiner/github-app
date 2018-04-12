import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final loginController = new TextEditingController();
  final passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sync for GitHub"),
      ),
      body: new Center(
        child: new Padding(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                  "Logging in to your GitHub account allows the app to fetch" +
                      " your favorite repositories and push notifications."
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 24.0),
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      controller: loginController,
                      decoration: new InputDecoration(hintText: "Login"),
                    ),
                    new TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: new InputDecoration(hintText: "Password"),
                    ),
                  ],
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 24.0),
                child: new RaisedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      child: new AlertDialog(
                        title: new Text("What you entered"),
                        content: new Text(loginController.text + "\n" + passwordController.text),
                      ),
                    );
                  },
                  child: new Text("Login"),
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
