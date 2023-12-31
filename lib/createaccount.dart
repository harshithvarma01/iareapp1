import 'package:flutter/material.dart';

class createaccount extends StatefulWidget {
  const createaccount({super.key});

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  TextEditingController namecontroller = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  bool isvisibility_off = false;

  get mobilenumbercontroller => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          backgroundColor: Color.fromARGB(255, 222, 224, 124),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Create account for joining our army",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name:"),
                  TextFormField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                        hintText: "varma",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(200))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Mobile Number:"),
                  TextFormField(
                    controller: mobilenumbercontroller,
                    decoration: InputDecoration(
                        hintText: "8919522323",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(200))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Email Address:"),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Apashyam.kirikiri@gmail.com",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(200))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Password"),
                  TextFormField(
                    controller: passwordController,
                    obscureText: isvisibility_off,
                    decoration: InputDecoration(
                        hintText: "secret",
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
                  ),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: Text('Create Account')),
              TextButton(
                  onPressed: () {},
                  child: TextButton(
                      onPressed: () {
                        print("button clicked");
                        Navigator.pop(context);
                      },
                      child: Text("Back")))
            ],
          )),
    );
  }
}
