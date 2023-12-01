import 'package:deliverycharges/dashboard.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      children: [
        Expanded(
          flex: 2,
          child: DashboardPage(
            demolist: titlelist,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            flex: 8,
            child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            'Zone Details:',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4F74A3)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: DashboardPage(
                        demolist: drivertitlelist,
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('First Name'),
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('Last Name'),
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('Stuff Age'),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('Phone'),
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('Email'),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('Locations'),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('Terminals'),
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('Services'),
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('Default Services'),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('Controls'),
                        const SizedBox(
                          width: 10,
                        ),
                        textfieldwidget('Dinning Table'),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 150,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xff4F74A3)),
                            child: const Center(
                              child: Text(
                                'Add Stuff',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}

final List titlelist = [
  'Total Item Sold',
  'Total Payments',
  'Total Profits',
  'Total Item Sold'
];
final List drivertitlelist = [
  'Total Tip',
  'Total Distance',
  'Total Minutes',
  'Mypoints'
];

textfieldwidget(String title) {
  return Expanded(
    child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
              labelText: title,
              hintText: 'Enter $title',
              hintStyle: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w400),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400] as Color),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400] as Color),
              )),
        )
      ],
    ),
  );
}
