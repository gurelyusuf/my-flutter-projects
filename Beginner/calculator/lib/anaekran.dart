import 'package:flutter/material.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  double sayi1 = 0;
  double sayi2 = 0;
  double sonuc = 0.0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = double.parse(t1.text);
      sayi2 = double.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = double.parse(t1.text);
      sayi2 = double.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = double.parse(t1.text);
      sayi2 = double.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = double.parse(t1.text);
      sayi2 = double.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            RaisedButton(
              onPressed: sayiTopla,
              child: Text("Topla"),
            ),
            RaisedButton(
              onPressed: sayiCikar,
              child: Text("Çıkar"),
            ),
            RaisedButton(
              onPressed: sayiCarp,
              child: Text("Çarp"),
            ),
            RaisedButton(
              onPressed: sayiBol,
              child: Text("Böl"),
            ),
          ],
        ),
      ),
    );
  }
}
