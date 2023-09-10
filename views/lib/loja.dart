import 'package:flutter/material.dart';
import 'package:views/produto.dart';

class Loja extends StatefulWidget {
  const Loja({super.key});
  @override
  FormsState createState() => FormsState();
}

class FormsState extends State<Loja> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Loja")),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Divider(), //linha divisória
            const SizedBox(height: 16.0),
            const Text(
              'Produtos',
              style: TextStyle(fontSize: 24.0, color: Colors.blue),
            ),
            const Divider(), // linha divisória
            //Expanded( if view all items listview
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: ListView.builder(
                shrinkWrap: true, // if scroll
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    //leading: Image(image: items[index]),
                    title: Text(items[index]),
                    //subtitle: Text(items[index]),
                    onTap: () {
                      // Handle tap on the item
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Produto(produto: items[index])));
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
