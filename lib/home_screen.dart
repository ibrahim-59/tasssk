import 'package:flutter/material.dart';
import 'package:task/models/category_model.dart';
import 'package:task/second.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<CategryModel> data = [
    CategryModel(
        label: "الواجبات",
        icon: Icons.edit_note_outlined,
        color: const Color.fromARGB(
          255,
          98,
          124,
          235,
        ),
        page: SeconScreen(
          title: "الواجبات",
          color: const Color.fromARGB(
            255,
            98,
            124,
            235,
          ),
        )),
    CategryModel(
      page: SeconScreen(
        title: "الاستئذنات",
        color: const Color.fromARGB(
          255,
          4,
          211,
          205,
        ),
      ),
      label: "الاستئذنات",
      icon: Icons.logout_outlined,
      color: const Color.fromARGB(
        255,
        4,
        211,
        205,
      ),
    ),
    CategryModel(
      page: SeconScreen(
        title: "التقارير",
        color: const Color.fromARGB(
          255,
          20,
          148,
          239,
        ),
      ),
      label: "التقارير",
      icon: Icons.edit_calendar_outlined,
      color: const Color.fromARGB(
        255,
        20,
        148,
        239,
      ),
    ),
    CategryModel(
      page: SeconScreen(
        title: "التأخيرات",
        color: const Color.fromARGB(
          255,
          225,
          93,
          194,
        ),
      ),
      label: "التأخيرات",
      icon: Icons.alarm_off,
      color: const Color.fromARGB(
        255,
        225,
        93,
        194,
      ),
    ),
    CategryModel(
      page: SeconScreen(
        title: "الجدوال الدراسيه",
        color: const Color.fromARGB(
          255,
          180,
          206,
          117,
        ),
      ),
      label: "الجدوال الدراسيه",
      icon: Icons.calendar_month_outlined,
      color: const Color.fromARGB(
        255,
        180,
        206,
        117,
      ),
    ),
    CategryModel(
      page: SeconScreen(
        title: "نتائج الاختبارات",
        color: const Color.fromARGB(
          255,
          248,
          127,
          98,
        ),
      ),
      label: "نتائج الاختبارات",
      icon: Icons.bar_chart_outlined,
      color: const Color.fromARGB(
        255,
        248,
        127,
        98,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        31,
        183,
        142,
      ),
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add_alert),
          )
        ],
        toolbarHeight: 100,
        leading: const Icon(Icons.menu),
        title: Padding(
          padding: const EdgeInsets.only(top: 8, right: 8, bottom: 8),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('أهلا بك',
                    style: TextStyle(fontWeight: FontWeight.normal)),
                Text(
                  'اسم الطالب هنا',
                  style: TextStyle(fontWeight: FontWeight.w900),
                )
              ]),
        ),
        backgroundColor: const Color.fromARGB(
          255,
          31,
          183,
          142,
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              primary: true,
              padding: const EdgeInsets.all(20),
              shrinkWrap: true,
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.8,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                CategryModel x = data[index];
                return Customcard(
                    color: x.color,
                    icon: x.icon,
                    label: x.label,
                    context: context,
                    page: x.page);
              }),
        ),
      ),
    );
  }

  Widget Customcard({
    required Color color,
    required BuildContext context,
    required IconData icon,
    required String label,
    required Widget page,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 3,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              height: 190,
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  height: 130,
                  child: Center(
                      child: Icon(
                    icon,
                    size: 50,
                    color: Colors.white,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    label,
                    style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                )
              ]),
            ),
          ),
        )
      ],
    );
  }
}
