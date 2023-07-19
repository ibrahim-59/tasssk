import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  final Color color;

  const Tabs({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: Container(
                height: 120,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.access_time,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text('10:30 ص'),
                                VerticalDivider(
                                  width: 30.0,
                                  thickness: 1.0,
                                  color: color,
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                              flex: 3,
                              child: Text(
                                'ماده الرياضيات',
                                style: TextStyle(
                                    color: color,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 20.0,
                    endIndent: 20.0,
                    color: color,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'الحصه الثالثه',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          VerticalDivider(
                            width: 30.0,
                            thickness: 1.0,
                            color: color,
                          ),
                          const Text(
                            'حجز رقم 5',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          );
        });
  }
}
