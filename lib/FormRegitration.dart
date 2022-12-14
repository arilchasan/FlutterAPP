import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondPage.dart';

class FormRegistration extends StatefulWidget {
  const FormRegistration({Key? key}) : super(key: key);

  @override
  State<FormRegistration> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FormRegistration> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();

  int id = 1;
  String myphone = "-";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Form Registration')),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container (
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: ctrUsername,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                controller: ctrPassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20),
              Text("Pilih Jenis Kelamin", style: TextStyle(fontSize: 15)),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          id = 1;
                        });
                      }),
                  Text("Male")
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: 2,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          id = 2;
                        });
                      }),
                  Text("Female")
                ],
              ),
              Text("Phone : " + myphone),
              ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SecondRoute())));
                    print("Hasil Input Nomer : " + result.toString());
                    setState(() {
                      myphone = result.toString();
                    });
                  },
                  child: Text("Phone Number")),
              Center(
                child: Container(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Submit"),
                  ),
                ),
              ),
            ],
          ),
          )
        ));
        
  }
}
