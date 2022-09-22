import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/demo1/screens/home.dart';
import 'package:instagram_clone/demo1/registration/registration.dart';
import 'package:instagram_clone/demo1/screens/base.dart';

import 'forgot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      theme: ThemeData.light(),
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEIkM3_PbWOhe9JMqtyLQ3CVE7KUk-Oh3Vgg&usqp=CAU',),
          splashIconSize: double.infinity,
          nextScreen: const MyHomePage(
            title: 'My Home page',
          ),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  var emailErr = "", passErr = "";

  String email = "A@gmail.com", pass = "A@123";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 80.0),
            height: 100,
            width: double.infinity,
            // decoration:  const BoxDecoration(
            //   // image: DecorationImage(
            //   //   image: NetworkImage('https://images.unsplash.com/photo-1564564295391-7f24f26f568b'),
            //   //   //AssetImage("assets/images/down1.png"),
            //   // ),
            // ),
            child: const Center(
              child: Text(
                "INSTAGRAM",
                style: TextStyle(
                  fontFamily: 'FontSpring',fontSize: 36,
                  letterSpacing: 3,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            width: double.infinity,
            child: Column(
              children: [
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: "Phone Number, UserName or Email",
                      errorText: emailErr.isEmpty ? null : emailErr),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      hintText: "Password",
                      errorText: passErr.isEmpty ? null : passErr),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent.shade200,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ForgotPass(),
                          ),
                        );
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                        minimumSize: const Size(350, 50),
                        backgroundColor: Colors.blueAccent.shade200),
                    onPressed: () {
                      // Navigator.of(context).pushReplacement(
                      //     MaterialPageRoute(builder: (context) => Home()));
                      if (isValid()) {
                        if (_emailController.text.trim() == email &&
                            _passwordController.text.trim() == pass) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Base()),
                          );
                         } //else {
                        //   //Show toast, alert,snackbar
                        // }
                        //Navigate to home
                      }
                    },
                    child: const Text("Login"),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Login Using Facebook',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black,
                        height: 20,
                      ),
                    ),
                    Text('OR'),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black,
                        height: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RegistrationScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(child: Text('from')),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(
                        child: Text(
                      'FACEBOOK',
                      style: TextStyle(
                        height: 1,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w900,
                          fontSize: 50,
                      color: Color(0xFFFF4081)),
                    ),),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  bool isValid() {
    if (_emailController.text.trim().isEmpty) {
      emailErr = "Please enter email";
      setState(() {});
      return false;
    } else if (_passwordController.text.trim().isEmpty) {
      emailErr = "";
      passErr = "Please enter password";
      setState(() {});
      return false;
    }
    emailErr = "";
    passErr = "";
    setState(() {});
    return true;
  }
}
