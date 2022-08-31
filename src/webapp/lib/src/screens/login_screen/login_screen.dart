import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(50),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
              ),
              color: Colors.red.shade50,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
            width: 400,
            height: 300,
            child: Form(
              child: Column(
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextFormField(
                      decoration: InputDecoration(label: Text('Usuário'))),
                  TextFormField(
                      decoration: InputDecoration(label: Text('Senha'))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: () {}, child: Text('criar conta')),
                        MaterialButton(
                          onPressed: () {},
                          child: Text('Entrar'),
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
