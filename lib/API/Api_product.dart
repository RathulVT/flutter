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
        child: Column(
          children: [
            FutureBuilder(
              future: getdata(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasData) {
                  return ListView(
                    children: [Text(snapshot.data["products"]["total"])],
                  );
                }
                if (snapshot.hasError) {
                  return Text("something error");
                } else {
                  return Text("something went wrong");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
