import 'dart:ui';

import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        Column,
        Container,
        CrossAxisAlignment,
        FormState,
        GlobalKey,
        Icon,
        Icons,
        Image,
        InkWell,
        InputDecoration,
        MainAxisAlignment,
        Navigator,
        OutlineInputBorder,
        Row,
        Scaffold,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextButton,
        TextEditingController,
        TextFormField,
        TextInputType,
        Widget;

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  get passwordController => TextEditingController();
  bool isvisibility_off = true;
  bool passwordToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 224, 124),
        body: Column(
          children: [
            SizedBox(
              height: 0,
            ),
            Image.asset(
              "assets/image2.png",
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: 12,
            ),
            Text("Welcome Soldier"),
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email Address"),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(200)),
                      prefixIcon: Icon(Icons.email)),
                  validator: (value) {
                    bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@gmail.com+")
                        .hasMatch(value!);
                    if (value!.isEmpty)
                      return "Enter Email ";
                    else if (!emailValid)
                      // ignore: curly_braces_in_flow_control_structures
                      return "Enter Valid Email";
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Password"),
                TextFormField(
                  controller: passwordController,
                  obscureText: isvisibility_off,
                  decoration: InputDecoration(
                      hintText: "password",
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isvisibility_off = !isvisibility_off;
                          });
                        },
                        child: isvisibility_off == true
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(200))),
                  validator: (value) {
                    if (value!.isEmpty)
                      return "Enter password";
                    else if (passwordController.text.length < 8)
                      return "password length should not be less than 8";
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text('Forget Password?')),
              ],
            ),
            SizedBox(height: 60),
            InkWell(
                onTap: () {
                  if (formfield.currentState!.validate()) {
                    print("data added Successfully");
                    emailController.clear();
                    passwordController.clear();
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 22, 88, 229),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
              children: [
                Text('New Here??'),
                TextButton(
                    onPressed: () {},
                    child: TextButton(
                        onPressed: () {
                          print("button clicked");
                          Navigator.pushNamed(context, "/createaccount");
                        },
                        child: Text("Create New Account")))
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: TextButton(
                        onPressed: () {
                          print("button clicked");
                          Navigator.pushNamed(context, "/home");
                        },
                        child: Text("States list")))
              ],
            )
          ],
        ),
      ),
    );
  }
}
