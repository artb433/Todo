import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:todo/controller/todo_controller.dart';
import 'package:todo/views/create_todo_view.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:todo/models/todo_model.dart';

// class HomeView extends StatefulWidget {
//   const HomeView({Key? key}) : super(key: key);

//   @override
//   State<HomeView> createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {

// }

class HomeView extends StatefulWidget {
  // const HomeView({ Key? key }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TodoController _todoController = TodoController();

  @override
  void initState() {
    _todoController.getAllTodos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: const Color.fromRGBO(14, 31, 85, 1),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 68.0, left: 65),
                    child: CircularPercentIndicator(
                      center: const Card(
                        shape: CircleBorder(
                          side: BorderSide(width: 1, color: Colors.white),
                        ),
                        child: CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              AssetImage('assets/images/artb.jpeg'),
                        ),
                      ),
                      radius: 150,
                      animation: true,
                      animationDuration: 1600,
                      progressColor: Colors.pink,
                      percent: 0.4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 80),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const SizedBox(
                        height: 60,
                        width: 70,
                        child: Card(
                          shape: CircleBorder(
                            side: BorderSide(width: 1, color: Colors.white),
                          ),
                          color: Color.fromRGBO(14, 31, 85, 1),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 22.0, right: 34),
                child: Text('Tahiru \n Abdul Rahman',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                    )),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(80, 20, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.bookmark_border_outlined,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Templates',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontStyle: FontStyle.normal,
                              )),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Icon(
                            Icons.category_outlined,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Categories',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.pie_chart_outline_outlined,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Analytics',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontStyle: FontStyle.normal,
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Settings',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontStyle: FontStyle.normal,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(249, 250, 250, 1),
      appBar: AppBar(
        toolbarHeight: 45,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color.fromRGBO(171, 158, 158, 1)),
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
              child: Text("What's up,Art B!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                    color: Color.fromRGBO(39, 35, 87, 1),
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
                                  left: 15.0, top: 2, bottom: 6),
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
                                percent: 0.4,
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
                                EdgeInsets.only(left: 15.0, top: 2, bottom: 6),
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
                              percent: 0.18,
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
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: FutureBuilder(
                  future: _todoController.getAllTodos(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting &&
                        snapshot.data == null) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.data == null) {
                      return const Text(
                        'Something went wrong',
                        style: TextStyle(fontSize: 30),
                      );
                    }

                    Todo? todo = snapshot.data as Todo;
                    return ListView.separated(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 80,
                            child: Card(
                              elevation: 0,
                              child: Row(
                                children: [
                                  const Radio(
                                    value: '',
                                    groupValue: '',
                                    onChanged: null,
                                    activeColor: Colors.pink,
                                  ),
                                  Text(
                                    todo.data![index].todoTitle!,
                                    style: const TextStyle(
                                        //decoration: TextDecoration.lineThrough,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 5),
                        itemCount: todo.data!.length); //Pass the lenght here
                  }),
            ),

            // FutureBuilder(
            //     future: _todoController.getAllTodos(),
            //     builder: (context, snapshot) {
            //       if (snapshot.connectionState == ConnectionState.waiting &&
            //           snapshot.data == null) {
            //         return const Center(child: CircularProgressIndicator());
            //       }
            //       if (snapshot.connectionState == ConnectionState.done &&
            //           snapshot.data == null) {
            //         return const Text(
            //           'Something went wrong',
            //           style: TextStyle(fontSize: 30),
            //         );
            //       }

            //       Todo? todo = snapshot.data as Todo;
            //       return Builder(builder: (context) {
            //         return ListView.separated(
            //           separatorBuilder: (BuildContext context, int index) =>
            //               const SizedBox(height: 10),
            //           itemCount: todo.data!.length,
            //           itemBuilder: (BuildContext context, int index) {
            //             return Dismissible(
            //               resizeDuration: const Duration(seconds: 7),
            //               background: Row(
            //                 children: [
            //                   const Padding(
            //                     padding: EdgeInsets.all(8.0),
            //                     child: Icon(Icons.delete_forever_outlined),
            //                   ),
            //                   const Padding(
            //                     padding: EdgeInsets.only(left: 18.0),
            //                     child: Text('The task was deleted'),
            //                   ),
            //                   Padding(
            //                     padding: const EdgeInsets.only(left: 48.0),
            //                     child: Container(
            //                       margin: const EdgeInsets.only(left: 15),
            //                       child: SizedBox(
            //                         width: 70,
            //                         height: 40,
            //                         child: InkWell(
            //                           onTap: () {},
            //                           child: Card(
            //                             color: Colors.blue,
            //                             elevation: 0,
            //                             shape: RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(50),
            //                             ),
            //                             child: Row(
            //                               children: const [
            //                                 Text(
            //                                   'UNDO',
            //                                   textAlign: TextAlign.center,
            //                                   style: TextStyle(
            //                                     fontSize: 18.0,
            //                                     fontWeight: FontWeight.w500,
            //                                     color: Colors.black,
            //                                     fontStyle: FontStyle.normal,
            //                                   ),
            //                                 ),
            //                               ],
            //                             ),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               key: const Key(''),
            //               child: Card(
            //                   elevation: 0,
            //                   child: Row(
            //                     children: [
            //                       const Radio(
            //                         value: '',
            //                         groupValue: '',
            //                         onChanged: null,
            //                         activeColor: Colors.pink,
            //                       ),
            //                       Text(todo.data![index].todoTitle!,
            //                           style: const TextStyle(
            //                             fontSize: 16.0,
            //                             fontWeight: FontWeight.w400,
            //                             color: Colors.black,
            //                             fontStyle: FontStyle.normal,
            //                           )),
            //                     ],
            //                   )),
            //             );
            //           },
            //         );
            //       });
            //     })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (buildContext) => const CreateTodoView()));
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
