import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _userName = '';
  String _phoneNumber = '';
  String _email = '';
  String _password = '';

  void _onUserName(String value) {
    setState(() {
      _userName = 'Your UserName is: $value';
    });
  }

  void _onPhoneNumber(String value) {
    setState(() {
      _phoneNumber = 'Your Phone number is: $value';
    });
  }

  void _onEmail(String value) {
    setState(() {
      _email = 'Your email is: $value';
    });
  }

  void _onPassword(String value) {
    setState(() {
      _password = 'Your password is: $value';
    });
  }

  @override
  Widget build(BuildContext context) {
    var _padding = EdgeInsets.symmetric(vertical: 1, horizontal: 1);
    var _margin = EdgeInsets.symmetric(vertical: 5, horizontal: 10);
    var _color = Colors.grey.shade300;
    var _alignment = Alignment(-1.0, 0.0);
    var _padding2 = EdgeInsets.all(8);
    var _margin2 = EdgeInsets.only(top: 17);
    // var _margin3 = EdgeInsets.fromLTRB(100, 0, 100, 5);
    // var _margin4 = EdgeInsets.fromLTRB(100, 0, 100, 0);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset(
            'images/hng.png',
            height: 200,
            width: 200,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: ListView(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 1,
            // height: MediaQuery.of(context).size.width / 1,
            alignment: Alignment(-1.0, 0.0),
            padding: EdgeInsets.all(8),
            margin: _margin2,
            child: Text(
              (_userName),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: _padding,
            margin: _margin,
            // height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: _color,
            ),

            child: TextField(
              controller: _usernameController,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Enter Your Username',
                labelText: 'Username',
              ),
              keyboardType: TextInputType.name,
              textAlign: TextAlign.start,
              onSubmitted: _onUserName,
            ),
          ),
          Container(
              alignment: _alignment,
              padding: _padding2,
              margin: _margin2,
              child: Text(
                _phoneNumber,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
          Container(
            padding: _padding,
            margin: _margin,
            // height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: _color,
            ),
            child: TextField(
              controller: _phoneController,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone Number'),
              keyboardType: TextInputType.phone,
              textAlign: TextAlign.start,
              onSubmitted: _onPhoneNumber,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1,
            alignment: Alignment(-1.0, 0.0),
            padding: EdgeInsets.all(8),
            child: Text(
              _email,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: _padding,
            margin: _margin,
            // height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: _color,
            ),
            child: TextField(
              controller: _emailController,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.start,
              onSubmitted: _onEmail,
            ),
          ),
          Container(
              alignment: _alignment,
              padding: _padding2,
              margin: _margin2,
              child: Text(
                _password,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
          Container(
            padding: _padding,
            margin: _margin,
            // height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: _color,
            ),
            child: TextField(
              controller: _passwordController,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: Icon(Icons.remove_red_eye_sharp),
                labelText: 'Password',
                hintText: 'Enter Your Password',
              ),
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.start,
              obscureText: true,
              onSubmitted: _onPassword,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Image.asset(
              'images/zuri.png',
              height: 60,
              width: 200,
            ),
          )
        ]),
      ),
    );
  }
}
// CLICK ON THE KEYBOARD BLUE SUBMIT BUTTON AND THE RESULT WILL DISPLAY. THANKS