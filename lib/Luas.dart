import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class bangundatar extends StatefulWidget {
  const bangundatar({Key? key}) : super(key: key);

  @override
  State<bangundatar> createState() => _kalkulatorState();
}

class _kalkulatorState extends State<bangundatar> {
  TextEditingController ctrPanjang = new TextEditingController();
  TextEditingController ctrLebar = new TextEditingController();
  TextEditingController ctrHasil = new TextEditingController();
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Luas"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Menghitung Luas Persegi Panjang",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: ctrPanjang,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan Panjang',
              ),
            ),
            Container(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: ctrLebar,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan Lebar',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      int hasil =
                          int.parse(ctrPanjang.text) * int.parse(ctrLebar.text);
                      ctrHasil.text = hasil.toString();
                    });
                  },
                  child: Text("Hasil")),
            )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Hasil : ${ctrHasil.text}cm",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(137, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
