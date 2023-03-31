import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart_list.dart';
import 'note_dialog.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Products',
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (c) => const CartList(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (c, i) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    'assets/images/placeholder.png',
                    height: 40,
                    width: 40,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Product Name',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '\$30',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const Spacer(),
                const SizedBox(width: 8),
                const NoteDialog()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
