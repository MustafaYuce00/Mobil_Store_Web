import 'package:flutter/material.dart';
import 'package:mobil_store_web/widgets/appBar/mainAppBar.dart';
import 'package:mobil_store_web/widgets/body/allPaket.dart';
import 'package:mobil_store_web/widgets/body/mainText.dart';
import 'package:mobil_store_web/widgets/body/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(context),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mainSlider(context),
              SizedBox(height: 50.0),
              mainText(context),
              SizedBox(height: 50.0),
              allPaket(context),
            ],
          ),
        ),
      ),
    );
  }
}
