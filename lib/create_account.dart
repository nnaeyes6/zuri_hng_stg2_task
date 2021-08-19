import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
          child: Text(
            'SignUp',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: ListView(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            (_userName),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
          SizedBox(
            height: 10,
          ),
          Text(
            _phoneNumber,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
          SizedBox(
            height: 10,
          ),
          Text(
            _email,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
          SizedBox(
            height: 10,
          ),
          Text(
            _password,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: InkWell(
              child: GestureDetector(
                child: Image.asset(
                  'images/zuri.png',
                  height: 50,
                  width: 200,
                ),
                onTap: () => launch('https://training.zuri.team/'),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: InkWell(
              child: GestureDetector(
                child: Image.asset(
                  'images/hng.png',
                  height: 50,
                  width: 200,
                ),
                onTap: () => launch('https://hng.tech/'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
// CLICK ON THE KEYBOARD BLUE SUBMIT BUTTON AND THE RESULT WILL DISPLAY. THANKS.