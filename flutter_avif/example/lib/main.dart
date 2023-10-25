import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_avif/flutter_avif.dart';
import "package:flutter_avif_android/flutter_avif_android.dart";
import "package:flutter_avif_ios/flutter_avif_ios.dart";

void main() {
  if (Platform.isAndroid) {
    FlutterAvifAndroid.registerWith();
  }
  if (Platform.isIOS) {
    FlutterAvifIos.registerWith();
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget encoderOutput = Container();
  Widget encoderOutput2 = Container();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
          actions: [
            IconButton(
              icon: const Icon(Icons.repeat_outlined),
              tooltip: 'Encode Demo',
              onPressed: () async {
                final bytes = await rootBundle.load("assets/vettel.gif");
                final avifBytes = await encodeAvif(bytes.buffer.asUint8List());
                setState(() {
                  encoderOutput = AvifImage.memory(
                    avifBytes,
                    height: 200,
                    fit: BoxFit.contain,
                  );
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.repeat_outlined),
              tooltip: 'Encode Demo 2',
              onPressed: () async {
                final bytes = await rootBundle.load("assets/keyboard.png");
                final avifBytes = await encodeAvif(bytes.buffer.asUint8List());
                setState(() {
                  encoderOutput2 = AvifImage.memory(
                    avifBytes,
                    height: 200,
                    fit: BoxFit.contain,
                  );
                });
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/5.avif',
              width: 100,
              height: 100,
            ),
            Image.asset(
              "assets/test_multi_frame.avif",
              height: 200,
              fit: BoxFit.contain,
            ),
            Image.asset(
              "assets/vettel.avif",
              height: 200,
              fit: BoxFit.contain,
            ),
            Image.asset(
              "assets/vettel.gif",
              height: 200,
              fit: BoxFit.contain,
            ),
            AvifImage.network(
              "https://ezgif.com/images/format-demo/butterfly.avif",
              height: 200,
              fit: BoxFit.contain,
            ),
            encoderOutput,
            encoderOutput2,
          ],
        ),
      ),
    );
  }
}
