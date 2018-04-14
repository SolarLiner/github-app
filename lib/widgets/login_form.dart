import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {

  final String username;

  LoginForm({this.username});

  @override
  State<StatefulWidget> createState() {
    return new _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {

  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();

  String username;
  String password;

  void _submit() {
    var form = formKey.currentState;
    if(form.validate()) {
      form.save();

    }
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.all(24.0),
      child: new Form(
        key: formKey,
        child: new Column(
          children: <Widget>[
            new TextFormField(
              decoration: new InputDecoration(labelText: 'Username'),
              validator: (val) => val.isEmpty? 'Username cannot be empty.' : null,
              onSaved: (val) => username = val,
            ),
            new TextFormField(
              decoration: new InputDecoration(labelText: 'Password'),
              obscureText: true,
              validator: (val) {
                if(val.isEmpty)
                  return 'Password cannot be empty.';
                if(val.length < 8)
                  return 'Password must at least be 8 characters long';
                return null;
              },
              onSaved: (val) => password = val,
            ),
            new Padding(padding: new EdgeInsets.only(top: 24.0),
              child: new RaisedButton(
                onPressed: _submit,
                child: new Text('Log in'),
              ),
            ),
          ],
        ),
      )
    );
  }
}