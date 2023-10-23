import 'package:flutter/material.dart';
import 'package:webf/webf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
    final Size viewportSize = queryData.size;

    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Column(
        children: [
          WebF(
            viewportWidth: viewportSize.width - queryData.padding.horizontal,
            viewportHeight: viewportSize.height - queryData.padding.vertical,
            bundle: WebFBundle.fromUrl('https://www.baidu.com'),
          ),
        ],
      ),
    )));
  }
}
