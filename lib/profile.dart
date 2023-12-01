import 'package:deliverycharges/main.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'Stuff Profile:',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4F74A3)),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(20.0), // Set the border radius here
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQM2kvjEaVBCD09NLbC7xhOarIZxsN0Lv6J1w&usqp=CAU', // Replace with your image URL
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                  child: ListTile(
                title: const Text(
                  'Jordan Nico',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff4F74A3),
                        ),
                        Text('5.0 . 1k+ Reviews')
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[300]),
                      child: const Center(
                        child: Text('Edit Profile'),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
          infotile('Total Delivered', '1,032'),
          infotile('Finished', '932'),
          infotile('Cancelled', '102'),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  'Operational Zone:',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4F74A3)),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: const HomePage(),
          ))
        ],
      ),
    );
  }

  infotile(String title, String val) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        color: Colors.white,
        child: ListTile(
          title: Text(title),
          trailing: Text(
            val,
            style: const TextStyle(
                color: Color(0xff4F74A3),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
