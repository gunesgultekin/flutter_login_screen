import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(loginScreen());
}

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to the Application",
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => homePageState();
}

class homePageState extends State<homePage> {
  void loginCheck() {}

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(42.5),
        child: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Welcome !",
            style: TextStyle(
              fontSize: 17.5,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.deepOrange,
            onPressed: () => print(""),
            tooltip: "Menu",
            highlightColor: Colors.red,
            iconSize: 25,
          ),
          shadowColor: Colors.deepOrange,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://images.pexels.com/photos/1103969/pexels"
                "-photo-1103969.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr="
                "2"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(55),
                  child: Container(
                    height: 100,
                    width: 300,
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_balance_sharp,
                          size: 75,
                          color: Colors.deepOrange,
                        ),
                        Text(
                          "Welcome Back !",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "Enter your ID and password to login",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.75,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Container(
                    height: 35,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.25),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.deepOrange,
                      ),
                      cursorColor: Colors.deepOrange,
                      decoration: InputDecoration(
                        hintText: "User ID",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        helperText: "Your 10-digit unique ID",
                        helperStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 9.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    height: 35,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.25),
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.deepOrange,
                      ),
                      cursorColor: Colors.deepOrange,
                      enableSuggestions: false,
                      autocorrect: false,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                        helperText: "Your Password",
                        helperStyle: TextStyle(
                          color: Colors.white70,
                          fontSize: 9.5,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: 250,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.login,
                          color: Colors.deepOrange,
                          size: 35,
                        ),
                        onPressed: () => print(""),
                        tooltip: "Login",
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.app_registration_outlined,
                          color: Colors.deepOrange,
                          size: 35,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => registerScreen()),
                          );
                        },
                        tooltip: "Register",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class registerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(40, 40),
        child: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            "Registration",
            style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontSize: 17.5,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Text(
          "This page has not been designed yet",
          style: TextStyle(
            fontSize: 50,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
