import 'package:flutter/material.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(40, 40, 0, 40),
              padding: const EdgeInsets.only(top: 20, right: 10),
              alignment: Alignment.topRight,
              child: Card(
                shape: const CircleBorder(
                    side: BorderSide(
                  color: Colors.grey,
                )),
                color: Colors.white,
                elevation: 2,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 24,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 150, 20, 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter new task',
                  hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(148, 156, 202, 1),
                      fontWeight: FontWeight.w400),
                  fillColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: SizedBox(
                width: 120,
                height: 65,
                child: InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.calendar_today),
                        ),
                        Text(
                          'Today',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(top: 110),
        //       child: SizedBox(
        //         width: MediaQuery.of(context).size.width,
        //         height: MediaQuery.of(context).size.width * 0.135,
        //         child: ClipRRect(
        //           child: Card(
        //               elevation: 0,
        //               borderOnForeground: true,
        //               child: Row(children: const [
        //                 Padding(
        //                   padding: EdgeInsets.only(left: 15.0, top: 8),
        //                   child: Text('Enter new task',
        //                       textAlign: TextAlign.center,
        //                       style: TextStyle(
        //                         fontSize: 16.0,
        //                         fontWeight: FontWeight.w400,
        //                         color: Colors.black54,
        //                         fontStyle: FontStyle.normal,
        //                       )),
        //                 ),
        //               ])),
        //           borderRadius: BorderRadius.circular(200),
        //         ),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.only(top: 40),
        //       child: Row(
        //         children: [
        //           SizedBox(
        //             width: MediaQuery.of(context).size.width * 0.4,
        //             height: MediaQuery.of(context).size.width * 0.135,
        //             child: ClipRRect(
        //               child: Card(
        //                   elevation: 0,
        //                   borderOnForeground: true,
        //                   child: Row(children: const [
        //                     IconButton(
        //                         onPressed: null,
        //                         icon: Icon(Icons.calendar_today)),
        //                     Text('Today',
        //                         textAlign: TextAlign.center,
        //                         style: TextStyle(
        //                           fontSize: 16.0,
        //                           fontWeight: FontWeight.w400,
        //                           color: Colors.black54,
        //                           fontStyle: FontStyle.normal,
        //                         )),
        //                   ])),
        //               borderRadius: BorderRadius.circular(20),
        //             ),
        //           ),
        //           CircleAvatar(
        //             foregroundColor: Colors.black,
        //             child: IconButton(
        //                 onPressed: () {},
        //                 icon: const Icon(
        //                   Icons.radio_button_checked,
        //                   color: Colors.blue,
        //                 )),
        //           )
        //         ],
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.only(top: 140),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: const [
        //           Icon(Icons.create_new_folder_outlined),
        //           Icon(Icons.flag_outlined),
        //           Icon(Icons.remove_circle_outlined)
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            icon: const Icon(Icons.arrow_drop_up),
            label: const Text('New task'),
            backgroundColor: Colors.blue));
  }
}
