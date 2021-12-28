import 'package:flutter/material.dart';
import 'package:project_school/school.dart';

class Account extends StatelessWidget {
  Account({Key? key}) : super(key: key);
  List<String> name = ['Customers', 'Suppliers', 'Treasurys', 'Payment'];
  List<String> image = [
    'assets/customers.png',
    'assets/suppliers.png',
    'assets/treasurys.png',
    'assets/payment.png'
  ];
  var x = 2;
  var y = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return TextButton(
                onPressed: name[index] == 'Customers'
                    ? (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const School())))
                    : null,
                child: Card(
                  color: Colors.lightBlue[900],
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                      child: Column(children: [
                        Text(name[index],
                            style: const TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                            )),
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(image[index])),
                      ]),
                    ),
                  ),
                ));
          }),
    );
  }
}
