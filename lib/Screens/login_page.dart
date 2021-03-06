import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String password;
  String username;

  bool _showpassword = false;
  bool isAutoValidate = false;
  bool isLogin = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final passwordfield = _buildPasswordTextField();

    final emailfield = TextFormField(
      style: TextStyle(fontSize: 16.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          labelText: "Email",
          hintStyle: TextStyle(color: Colors.green),
          labelStyle: TextStyle(color: Colors.green),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(12.0),
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.0))),
      validator: (value) {
        if (value.isEmpty) {
          return "Empty Email field";
        }
        final RegExp emailExp = RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
        if (!emailExp.hasMatch(value)) {
          return "Invalid email format";
        }
        return null;
      },
      onSaved: (newValue) {
        this.username = newValue;
      },
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.green,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {},
        child: this.isLogin
            ? Container(
                height: height * 0.03,
                width: height * 0.03,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  value: null,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white,
                  ),
                ),
              )
            : Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: height / 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
      ),
    );

    final forgetpasword = FlatButton(
        onPressed: () {
          // Navigator.push(context,
          //     new MaterialPageRoute(builder: (context) => ForgetPassword()));
        },
        child: Text(
          "Forget Password?",
          style: TextStyle(color: Colors.green, fontSize: height / 54),
        ));

    return Padding(
      padding: EdgeInsets.all(height * 0.35),
      child: SingleChildScrollView(
        child: Container(
          height: height * 0.9,
          child: Form(
            key: formKey,
            // autovalidateMode: AutovalidateMode.always,
            autovalidate: isAutoValidate,
            child: Card(
              elevation: 0,
              margin: EdgeInsetsDirectional.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: height * 0.01,
                    ),
                    // Container(height: height * 0.08, child: logo),
                    SizedBox(height: height / 15),
                    // logintitle,
                    SizedBox(
                      height: height / 16,
                    ),
                    emailfield,
                    SizedBox(
                      height: height / 25,
                    ),
                    passwordfield,
                    SizedBox(
                      height: height / 25,
                    ),
                    loginButton,
                    SizedBox(
                      height: height / 25,
                    ),
                    Align(
                        alignment: Alignment.centerRight, child: forgetpasword),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      obscureText: !this._showpassword,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.green),
        labelText: "Password",
        labelStyle: TextStyle(color: Colors.green),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(12.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(12.0),
        ),
        suffixIcon: IconButton(
            icon: Icon(
                this._showpassword ? Icons.visibility : Icons.visibility_off),
            color: Colors.green,
            onPressed: () {
              setState(() {
                this._showpassword = !this._showpassword;
              });
            }),
      ),
      validator: (value) {
        if (value.trim().isEmpty) {
          return "password must requried";
        }
        return null;
      },
      onChanged: (newValue) {
        this.password = newValue;
      },
    );
  }
}
