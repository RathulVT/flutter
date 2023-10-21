import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Mapwebview extends StatefulWidget {
  const Mapwebview({Key? key}) : super(key: key);

  @override
  State<Mapwebview> createState() => _MapwebviewState();
}

class _MapwebviewState extends State<Mapwebview> {
  late WebViewController Mapcontroller;
  
  @override
  void initState() {
    // TODO: implement initState
    Mapcontroller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse("https://www.google.com/maps/@11.2599256,75.8185309,15z?authuser=0&entry=ttu"));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(controller: Mapcontroller),
      ),
      
    );
  }
}
