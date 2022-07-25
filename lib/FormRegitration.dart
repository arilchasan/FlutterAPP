import 'package:flutter/material.dart';

class FormRegistration extends StatefulWidget {
  const FormRegistration({Key? key}) : super(key: key);

  @override
  State<FormRegistration> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FormRegistration> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Form Registration')),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: ctrUsername,
                obscureText: true,
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
        ));
  }
}
