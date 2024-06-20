import 'package:flutter/material.dart';
import 'package:mobil_store_web/web/widgets/appBar/mainAppBar.dart';
import 'package:mobil_store_web/web/widgets/body/allPaket.dart';
import 'package:mobil_store_web/web/widgets/body/mainText.dart';
import 'package:mobil_store_web/web/widgets/body/slider.dart';
import 'package:mobil_store_web/web/widgets/footer/footer.dart';

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
            children: [
              mainSlider(context),
              SizedBox(height: 40.0),
              mainText(context),
              SizedBox(height: 40.0),
              MediaQuery.of(context).size.width >= 600
                  ? Row(
                      children: [
                        // paketler hakkında kısa açıklama ve paketlerin listelendiği kısım
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Text(
                              'Paketler ve Fiyatlarımız asdajdhaskjdhajshasdjkfasldjasdgksghjadsgjasdgasdjgasghsadjgjfasdfjhsadjfashdflasdjfkljsdhfklasdhfkalsdjfaksfhkafklsadfjsadfhllaskjdfhakjsdfhjkaslfjasdhfklakfhasjkdhfaklsfhlkasfdhjk ',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              maxLines: 7,
                            ),
                          ),
                        ),
                        allPaket(context),
                      ],
                    )
                  : Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(
                            'Paketler ve Fiyatlarımız asdajdhaskjdhajshasdjkfasldjasdgksghjadsgjasdgasdjgasghsadjgjfasdfjhsadjfashdflasdjfkljsdhfklasdhfkalsdjfaksfhkafklsadfjsadfhllaskjdfhakjsdfhjkaslfjasdhfklakfhasjkdhfaklsfhlkasfdhjk ',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                            maxLines: 7,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        allPaket(context),
                      ],
                    ),
              Spacer(),
              footer(context),
            ],
          ),
        ),
      ),
    );
  }
}
