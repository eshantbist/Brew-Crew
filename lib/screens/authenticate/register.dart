import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService(); 
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password  = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign Up to Brew Crew'),
         actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              widget.toggleView();
            }, 
            icon: Icon(Icons.person), 
            label: Text("Sign In")
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical:20.0,horizontal:50),
        child: Form(
          key:_formKey,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                onChanged: (val) {
                  setState(() => email = val );
                  print(email);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() => password= val );
                  print(password);

                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                onPressed: () async{
                  if(_formKey.currentState.validate()){
                    print(email);
                    print(password);
                  }
                  else{
                    
                  }
                },
                color: Colors.pink[400],
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              )
            ],
          ),
        ),
      ),
    );
  }
}