import 'package:flutter/material.dart';
import 'package:flutter_demo/model/catalog.dart';
import 'package:flutter_demo/widgets/itemWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'This is iOS Demo',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new MyHomePage(title: 'ListView with Search.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController editingController = TextEditingController();

  var items = List<Item>();

  @override
  void initState() {
    items.addAll(CatalogModel.items);
    super.initState();
  }

  void filterSearchResults(String query) {
    List<Item> dummySearchList = List<Item>();
    dummySearchList.addAll(CatalogModel.items);
    if (query.isNotEmpty) {
      List<Item> dummyListData = List<Item>();
      dummySearchList.forEach((item) {
        if (item.name.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(CatalogModel.items);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(item: items[index]);
                    }))
          ],
        ),
      ),
    );
  }
}
