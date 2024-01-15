import 'package:flutter/material.dart';
import 'package:shoe_store/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = true;
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 70, bottom: 8),
                child: Text(
                  'Shoe Store',
                  style: TextStyle(fontSize: 45),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 100),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextField(
                  controller: _controllerEmail,
                  decoration: const InputDecoration(
                      hintText: 'email@gmail.com',
                      labelText: 'Email',
                      border: OutlineInputBorder()),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: TextField(
                  controller: _controllerPassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                  obscureText: _passwordVisible,
                  autocorrect: false,
                ),
              ),
              SizedBox(
                width: 100,
                child: FilledButton(
                    onPressed: () {
                      String email = _controllerEmail.value.text;
                      String pass = _controllerPassword.value.text;
                      if (email.isNotEmpty && pass.isNotEmpty) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Please input email and password"),
                        ));
                      }
                    },
                    child: const Text('Login')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
