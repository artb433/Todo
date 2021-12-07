import 'package:flutter/material.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                elevation: 0,
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
              margin: const EdgeInsets.fromLTRB(20, 150, 20, 10),
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
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
            Row(
              children: [
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
                Container(
                  margin: const EdgeInsets.all(18),
                  child: SizedBox(
                    width: 56,
                    height: 56,
                    child: InkWell(
                      onTap: () {},
                      child: const Card(
                        shape: CircleBorder(
                            side: BorderSide(
                          color: Colors.grey,
                        )),
                        color: Colors.white,
                        elevation: 0,
                        child: Icon(
                          Icons.radio_button_checked,
                          size: 24,
                          color: Color.fromRGBO(22, 106, 237, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.create_new_folder_outlined,
                        size: 36,
                        color: Color.fromRGBO(139, 131, 141, 1),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.flag_outlined,
                        size: 36,
                        color: Color.fromRGBO(139, 131, 141, 1),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.dark_mode_outlined,
                        size: 36,
                        color: Color.fromRGBO(139, 131, 141, 1),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.expand_less_outlined),
        label: const Text('New task'),
        elevation: 0,
        backgroundColor: const Color.fromRGBO(22, 106, 237, 1),
      ),
    );
  }
}
