import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:todo/views/create_todo_view.dart';
import 'package:todo/views/custom_widget/padding_with_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 250, 250, 1),
      appBar: AppBar(
        toolbarHeight: 45,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 3.0),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.grey.shade700,
              )),
        ),
        actions: [
          IconButton(
              tooltip: 'search',
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(Icons.search, color: Colors.grey.shade700)),
          IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(Icons.notifications_outlined,
                  color: Colors.grey.shade700)),
        ],
        backgroundColor: const Color.fromRGBO(249, 250, 250, 1),
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(18),
              child: Text("What's up,Art B",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(161, 167, 200, 1),
                    fontStyle: FontStyle.normal,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18.0, top: 17, bottom: 4),
              child: Text("CATEGORIES",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(161, 167, 200, 1),
                    fontStyle: FontStyle.normal,
                  )),
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.21,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Card(
                      elevation: 0,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 15.0, top: 8),
                              child: Text('40 tasks',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                    fontStyle: FontStyle.normal,
                                  )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, top: 6, bottom: 10),
                              child: Text('Business',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width * 0.32,
                                lineHeight: 4.0,
                                percent: 0.6,
                                progressColor: Colors.pink,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.21,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    elevation: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0, top: 8),
                            child: Text('18 tasks',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                  fontStyle: FontStyle.normal,
                                )),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 15.0, top: 6, bottom: 10),
                            child: Text('Personal',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * 0.32,
                              lineHeight: 4.0,
                              percent: 0.6,
                              progressColor: Colors.blue,
                            ),
                          ),
                        ]),
                  ),
                ),
              )
            ]),
            const Padding(
              padding: EdgeInsets.only(left: 18.0, top: 1),
              child: Text("TODAY'S",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(161, 167, 200, 1),
                    fontStyle: FontStyle.normal,
                  )),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
              ),
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        elevation: 0,
                        child: Row(
                          children: const [
                            Radio(
                              value: '',
                              groupValue: '',
                              onChanged: null,
                              activeColor: Colors.pink,
                            ),
                            Text('Daily meeting with team',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                )),
                          ],
                        ));
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: 10),
                  itemCount: 20),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext) => const CreateTodoView()));
        },
        child: const Icon(
          Icons.add,
          size: 28,
        ),
        backgroundColor: const Color.fromRGBO(22, 106, 237, 1),
      ),
    );
  }
}
