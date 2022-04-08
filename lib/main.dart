import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1F5FE),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    width: 200,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Sample',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
              Text(
                'One',
                style: TextStyle(
                  color: Colors.redAccent.withOpacity(0.7),
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                    ),
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                      bottom: -2,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                          color: Colors.deepPurple, width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                          color: Colors.deepPurple, width: 1.5),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Colors.black45,
                    ),
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                      bottom: -2,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                          color: Colors.deepPurple, width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: const BorderSide(
                          color: Colors.deepPurple, width: 1.5),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  obscureText: true,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 60, left: 20, right: 20),
                    child: TextButton(
                      onPressed: () {
                        if (usernameController.text == 'admin@gmail.com') {
                          if (passwordController.text == '12345') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SecondPage(),
                              ),
                            );
                          }
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blueAccent,
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.only(
                            top: 15,
                            bottom: 15,
                          ),
                        ),
                        elevation: MaterialStateProperty.all(10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hi, Welcome to \n Sample One'),
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Colors.blueAccent,
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.only(
                          top: 15,
                          bottom: 15,
                        ),
                      ),
                      elevation: MaterialStateProperty.all(10),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
