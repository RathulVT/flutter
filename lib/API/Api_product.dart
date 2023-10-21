import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Product_Api extends StatefulWidget {
  const Product_Api({Key? key}) : super(key: key);

  @override
  State<Product_Api> createState() => _Product_ApiState();
}

class _Product_ApiState extends State<Product_Api> {
  getdata() async {
    final res = await get(Uri.parse("https://dummyjson.com/products"));
    if (res.statusCode == 200) {
      var productdata = jsonDecode(res.body);
      return productdata;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getdata(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return ListView.separated(
                itemCount: snapshot.data["products"].length,
                itemBuilder: (context, index) {
                  return ListTile(contentPadding: EdgeInsets.all(8.0),
                    leading: CircleAvatar(radius: 40,
                      backgroundImage: NetworkImage(
                        snapshot.data["products"][index]["thumbnail"],
                      ),
                    ),
                    title: Text(
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      snapshot.data["products"][index]["title"].toString(),
                    ),
                    subtitle: Text(
                      snapshot.data["products"][index]["description"]
                          .toString(),
                    ),
                    trailing: Text(
                      snapshot.data["products"][index]["price"].toString(),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    color: Colors.black,
                  );
                },
              );
            }
            if (snapshot.hasError) {
              return const Text("something error");
            } else {
              return const Text("something went wrong");
            }
          },
        ),
      ),
    );
  }
}
