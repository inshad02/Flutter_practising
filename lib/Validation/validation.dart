import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                height: 220,
                width: 220,
                child: Image.network(
                    "https://th.bing.com/th/id/R.87e87fa8cb1c4d332a64470d5c3acd89?rik=vuWahGaWKYN5CQ&riu=http%3a%2f%2fdli-eduventure.um.ac.id%2fassets%2fimg%2flogin.png&ehk=hPJNQY6rdxBzsCPJa9ahwTJgf6KEPNQdNr1lfqo1NTk%3d&risl=&pid=ImgRaw&r=0"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hi, Welcome Back!!!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.person),
                            labelText: "Username",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_red_eye)),
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.password),
                            labelText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "LOGIN",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account ?"),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "SignUp",
                              style: TextStyle(color: Colors.blue),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
