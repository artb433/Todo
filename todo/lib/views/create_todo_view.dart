import 'package:flutter/material.dart';

class CreateTodoView extends StatefulWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  State<CreateTodoView> createState() => _CreateTodoViewState();
}

class _CreateTodoViewState extends State<CreateTodoView> {
  String _value = "Select a todo category";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 9, 20, 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(40, 0, 0, 70),
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
                margin: const EdgeInsets.fromLTRB(20, 100, 20, 10),
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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: PopupMenuButton(
                    onSelected: (value) {
                      setState(() {
                        _value = value.toString();
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Row(
                        children: [
                          Text(_value,
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.black45,
                                fontStyle: FontStyle.normal,
                              )),
                          const Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                    itemBuilder: (context) => [
                          const PopupMenuItem(
                            child: Text("Personal"),
                            value: 'Personal',
                          ),
                          const PopupMenuItem(
                            child: Text("Business"),
                            value: 'Business',
                          )
                        ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 25),
                      child: SizedBox(
                        width: 130,
                        height: 65,
                        child: Card(
                          color: Colors.grey,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(55),
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
                              size: 35,
                              color: Color.fromRGBO(22, 106, 237, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
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
