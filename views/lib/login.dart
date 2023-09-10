import 'package:flutter/material.dart';
import 'package:views/loja.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  FormsState createState() => FormsState();
}

class FormsState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Véio'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Image(
              image: NetworkImage(
                  "https://media.istockphoto.com/id/1323529010/pt/vetorial/fire-vector-isolated.jpg?s=612x612&w=0&k=20&c=tWVgViatAqLB_qLqinOs9DwOAcQ6k8-1OHNawB8IUbA="),
              width: 300.00,
              height: 300.00,
            ),
            const SizedBox(height: 100.0),
            const Text('Login', style: TextStyle(fontSize: 30.0)),
            const SizedBox(height: 50.0),
            const SizedBox(
                height: 16.0), // um retângulo contendo widget de entrada
            SizedBox(
                // label para primeiro número
                width: 300,
                child: TextField(
                  controller: _email, // associa controle ao widget
                  keyboardType: TextInputType.text, // tipo de entrada
                  decoration: const InputDecoration(
                    // customização
                    hintText: 'Entre com email', //hint
                    prefixIcon: Icon(Icons.email), //icon
                    enabledBorder: OutlineInputBorder(
                      //borda ao redor da entrada
                      borderSide: BorderSide(color: Colors.blue), //cor da borda
                    ), //quando receber o foco, altera cor da borda
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  ),
                )),

            const SizedBox(height: 16.0),
            SizedBox(
                width: 300,
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: _password,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: "Entre com a senha",
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                  ),
                )),
            const SizedBox(height: 50.0),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Loja()),
                    );
                  },
                  child: const Text('Entrar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
