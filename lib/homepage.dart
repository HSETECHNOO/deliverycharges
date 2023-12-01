import 'package:deliverycharges/details.dart';
import 'package:deliverycharges/profile.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<bool> sufflist = List.generate(6, (index) => false).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30, top: 30),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Stuff Driver V1',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4F74A3)),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '22/08/2023',
                                  hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[400] as Color),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[400] as Color),
                                  )),
                            ),
                          ),
                          Container(
                            width: 20,
                          ),
                          const Text('To'),
                          Container(
                            width: 20,
                          ),
                          SizedBox(
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '29/11/2023',
                                  hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[400] as Color),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey[400] as Color),
                                  )),
                            ),
                          ),
                          Container(
                            width: 20,
                          ),
                          Container(
                            width: 150,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xff4F74A3)),
                            child: const Center(
                              child: Text(
                                'Search',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 100),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              ListView.builder(
                                  itemCount: 6,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              border: Border.all(
                                                  color: index == 4
                                                      ? const Color(0xff4F74A3)
                                                      : Colors.grey[300]
                                                          as Color)),
                                          child: ListTile(
                                            trailing: Switch(
                                              focusColor:
                                                  const Color(0xff4F74A3),
                                              value: sufflist[index],
                                              onChanged: (value) {
                                                setState(() {
                                                  sufflist[index] =
                                                      !sufflist[index];
                                                });
                                              },
                                            ),
                                            subtitle:
                                                const Text('72379-2830-90-9'),
                                            title: Text(
                                              'Stuff ${index + 1} Zaman Khan',
                                              style: TextStyle(
                                                  fontWeight: index == 4
                                                      ? FontWeight.bold
                                                      : FontWeight.w400,
                                                  color: index == 4
                                                      ? const Color(0xff4F74A3)
                                                      : Colors.grey),
                                            ),
                                          ),
                                        ));
                                  }),
                              Expanded(child: Container()),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.grey[300] as Color)),
                                height: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.add,
                                      color: Color(0xff4F74A3),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Add Stuff',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff4F74A3)),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 400,
                      child: ProfilePage(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: (MediaQuery.of(context).size.width / 2) + 100,
                      child: const Row(
                        children: [
                          Expanded(flex: 8, child: DetailsPage()),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
