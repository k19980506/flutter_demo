import 'package:flutter_demo/model/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 0,
        color: Colors.blue.shade100,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                // leading: Image.network(item.image, height: 40, width: 40),
                leading: Text("ID: ${item.id}"),
                title: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(
                      child: Text("名稱:\n${item.name}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18))),
                ),
                // subtitle: Center(
                //     child: Text("\$${item.originalPrice}",
                //         style: TextStyle(
                //             color: Colors.indigo.shade500,
                //             decoration: TextDecoration.lineThrough,
                //             fontWeight: FontWeight.bold,
                //             fontSize: 15))),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("專櫃：\$${item.originalPrice}",
                        style: TextStyle(
                            color: Colors.indigo.shade500,
                            // decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.bold,
                            fontSize: 10)),
                    Text("\$${item.price}", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("折價${100 * (1 - item.discount)}\%",
                        style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 12)),
                  ],
                ))),
      ),
    );
  }
}
