import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingListPage(),
    );
  }
}

class ShoppingListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle: true,

        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Implement cart functionality here
            },
          ),
        ],
      ),
      body: ShoppingItemList(),
    );
  }
}

class ShoppingItemList extends StatelessWidget {
  final List<Map<String, dynamic>> shoppingItems = [
    {'name': 'Apples', 'icon': Icons.shopping_basket},
    {'name': 'Bananas', 'icon': Icons.shopping_basket},
    {'name': 'Bread', 'icon': Icons.shopping_basket},
    {'name': 'Milk', 'icon': Icons.shopping_basket},
    {'name': ' Eggs', 'icon': Icons.shopping_basket},
    // You can add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoppingItems.length,
      itemBuilder: (context, index) {
        final item = shoppingItems[index];
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          elevation: 4.0,
          child: ListTile(
            leading: Icon(item['icon'], size: 40.0, color: Colors.blue),
            title: Text(
              item['name'],
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            onTap: () {

            },
          ),
        );
      },
    );
  }
}
