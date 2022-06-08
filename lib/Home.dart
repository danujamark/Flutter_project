import 'package:flutter/material.dart';

class Product {
  final String name;
  final int price;
  final int qty;
  final String image;

  Product({
    required this.name,
    required this.price,
    required this.qty,
    required this.image,
  });
}

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> productlist = [
    Product(
        name: "book",
        price: 100,
        qty: 10,
        image:
            "https://cdn.pixabay.com/photo/2016/01/27/04/32/books-1163695__340.jpg"),
    Product(
        name: "bag",
        price: 2000,
        qty: 5,
        image:
            "https://cdn.pixabay.com/photo/2016/06/25/12/48/go-pro-1478810__340.jpg"),
    Product(
        name: "pen",
        price: 10,
        qty: 100,
        image:
            "https://cdn.pixabay.com/photo/2016/11/23/18/14/fountain-pen-1854169__340.jpg"),
    Product(
        name: "paper",
        price: 2,
        qty: 100,
        image:
            "https://cdn.pixabay.com/photo/2018/04/07/08/28/notepad-3297994__340.jpg"),
    Product(
        name: "pencil",
        price: 20,
        qty: 200,
        image:
            "https://cdn.pixabay.com/photo/2016/06/29/08/50/pencils-1486278__340.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("product details "),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(
                  child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productlist[index].name,
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          productlist[index].price.toString(),
                                          style:
                                              const TextStyle(fontSize: 18.0),
                                        ),
                                      ),
                                      Text(
                                        productlist[index].qty.toString(),
                                        style: const TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              productlist[index].image,
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ))));
        },
      ),
    );
  }
}
