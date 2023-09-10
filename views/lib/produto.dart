import 'package:flutter/material.dart';

class Produto extends StatefulWidget {
  final String produto;
  const Produto({Key? key, required this.produto}) : super(key: key);

  @override
  FormsState createState() => FormsState(produto: produto);
}

class FormsState extends State<Produto> {
  final TextEditingController _produtoController;

  FormsState({required String produto})
      : _produtoController = TextEditingController(text: produto);

  final TextEditingController _quantidade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Produto")),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 100.0),
            const Text('Carrinho', style: TextStyle(fontSize: 30.0)),
            const SizedBox(height: 50.0),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _produtoController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Entre com o produto',
                  prefixIcon: Icon(Icons.shopping_cart),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _quantidade,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: "Entre com a quantidade",
                  prefixIcon: Icon(Icons.add_shopping_cart),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Faça algo com _produtoController.text e _quantidade.text
                    // Por exemplo, você pode enviá-los para outra tela ou realizar alguma ação com eles.
                  },
                  child: const Text('Comprar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
