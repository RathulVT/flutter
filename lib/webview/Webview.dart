import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webviewtask extends StatefulWidget {
  const Webviewtask({Key? key}) : super(key: key);

  @override
  State<Webviewtask> createState() => _WebviewtaskState();
}

class _WebviewtaskState extends State<Webviewtask> {

  late WebViewController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse("https://www.amazon.in/?&ext_vrnc=hi&tag=googhydrabk1-21&ref=pd_sl_7hz2t19t5c_e&adgrpid=58355126069&hvpone=&hvptwo=&hvadid=676742234347&hvpos=&hvnetw=g&hvrand=3951959357926515182&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1007778&hvtargid=kwd-10573980&hydadcr=14453_2367553"));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(controller: controller ),

      ),
    );
  }
}
