import 'package:app_counter/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_provider.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  final nameTextEditingController = TextEditingController();
  final emailTextEditingController = TextEditingController();
  final phoneTextEditingController = TextEditingController();
  final nameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final phoneFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final accountProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 64, 255, 131),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 54, 244),
        title: Text('REGISTRATION FORM',
            style: TextStyle(
                color: Color.fromRGBO(48, 5, 165, 1),
                fontStyle: FontStyle.italic,
                fontSize: 24)),
      ),
      body: Column(
        children: [
          Container(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage("asset/8.png"),
            ),
          ),
          Expanded(
            child: Form(
                key: formkey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
              
                      textInputAction: TextInputAction.next,
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 200, 24, 30)),
                      controller: nameTextEditingController,
                      focusNode: nameFocusNode,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Enter your full Name',
                        labelText: 'Name',
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 200, 24, 30)),
                        controller: emailTextEditingController,
                        focusNode: emailFocusNode,
                        decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: 'Enter your Email',
                          labelText: 'example@gmail.com',
                        ),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return 'Please enter a valid Email';
                          }

                          if (!RegExp(
                                  r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                              .hasMatch(value!)) {
                            return 'invalid Email';
                          }
                        }),
                    TextFormField(
                      onEditingComplete: () {
                          if (formkey.currentState!.validate()) {
                            accountProvider.login(
                                name: nameTextEditingController.text,
                                phone: phoneTextEditingController.text,
                                email: emailTextEditingController.text);
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          }
                        },
                      textInputAction: TextInputAction.send,
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 200, 24, 30)),
                      controller: phoneTextEditingController,
                      focusNode: phoneFocusNode,
                      decoration: InputDecoration(
                        icon: Icon(Icons.phone),
                        hintText: 'Enter your phone number',
                        labelText: 'phone',
                      ),
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 150.0, top: 40.0),
                      child: ElevatedButton(
                        child: Text('Submit'),
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            accountProvider.login(
                                name: nameTextEditingController.text,
                                phone: phoneTextEditingController.text,
                                email: emailTextEditingController.text);
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          }
                        },
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
