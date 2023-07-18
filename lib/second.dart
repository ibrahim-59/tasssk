import 'package:flutter/material.dart';
import 'package:task/tabs.dart';

class SeconScreen extends StatelessWidget {
  final String title;
  final Color color;
  SeconScreen({required this.title, required this.color});

  final _tabs = const [
    Tab(text: 'السبت'),
    Tab(text: 'الأحد'),
    Tab(text: 'الاثنين'),
    Tab(text: 'الثلاثاء'),
    Tab(text: 'الأربعاء'),
    Tab(text: 'الخميس'),
    Tab(text: 'الجمعه'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: Padding(
            padding: const EdgeInsets.only(top: 8, right: 8, bottom: 8),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
          backgroundColor: color,
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 100,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_forward))
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
          child: Column(children: [
            TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: _tabs,
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Tabs(
                color: color,
              ),
              //     TabBarView(
              //   children: [
              //     Tabs(),
              //     Tabs(),
              //     Tabs(),
              //     Tabs(),
              //     Tabs(),
              //     Tabs(),
              //     Tabs(),
              //   ],
              // ),
            ),
          ]),
        ),
      ),
    );
  }
}
