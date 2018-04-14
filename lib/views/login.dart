import 'package:flutter/material.dart';
import '../widgets/login_form.dart';

class LoginView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sync for GitHub"),
      ),
      body: new Center(
        child: new LoginForm()
      )
    );
  }
}
