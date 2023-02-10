import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/globals/globals.dart';

void main() {
  runApp(MyList());
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade50,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 25,
                child: IndexedStack(
                  index: currentValue,
                  children: [
                    Column(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Cupertino Store',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 22,
                          child: SingleChildScrollView(
                            child: Column(
                                children: Items.map((e) => Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 100,
                                            width: double.infinity,
                                            child: Row(
                                              children: [
                                                Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    const CircleAvatar(
                                                      radius: 60,
                                                      backgroundColor:
                                                          Colors.grey,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 49.7,
                                                      backgroundImage:
                                                          AssetImage(
                                                              '${e['photo']}'),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '${e['name']}',
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    Text(
                                                      'Rs ${e['price']} / -',
                                                      style: const TextStyle(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      Selected.add(e);
                                                      sum = sum +
                                                          int.parse(e['price']);
                                                    });
                                                  },
                                                  child: const Icon(
                                                    CupertinoIcons.add_circled,
                                                    size: 25,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(
                                            thickness: 0.5,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    )).toList()),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Spacer(),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                                height: 30,
                                width: double.infinity,
                                child: CupertinoTextField(
                                  prefix: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(CupertinoIcons.search),
                                  ),
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.grey.shade300,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade50,
                                            offset: Offset(2, 3),
                                            blurRadius: 5)
                                      ]),
                                )),
                          ),
                        ),
                        Expanded(
                          flex: 22,
                          child: SingleChildScrollView(
                            child: Column(
                                children: Items.map((e) => Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 100,
                                            width: double.infinity,
                                            child: Row(
                                              children: [
                                                Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    const CircleAvatar(
                                                      radius: 40,
                                                      backgroundColor:
                                                          Colors.black87,
                                                    ),
                                                    CircleAvatar(
                                                      radius: 39,
                                                      backgroundImage:
                                                          AssetImage(
                                                              '${e['photo']}'),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '${e['name']}',
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    Text(
                                                      'Rs ${e['price']} / -',
                                                      style: const TextStyle(
                                                          color: Colors.grey,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                GestureDetector(
                                                  child: const Icon(
                                                    CupertinoIcons.add_circled,
                                                    size: 25,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(
                                            thickness: 0.5,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    )).toList()),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Expanded(
                            flex: 5,
                            child: Column(
                              children: [
                                CupertinoTextField(
                                  placeholderStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 10, right: 6, bottom: 10),
                                  prefix: const Icon(
                                    CupertinoIcons.person_alt,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                  placeholder: 'Name',
                                ),
                                const Divider(
                                  thickness: 1.5,
                                ),
                                CupertinoTextField(
                                  placeholderStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 10, right: 6, bottom: 10),
                                  prefix: const Icon(
                                    CupertinoIcons.mail_solid,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                  placeholder: 'Email',
                                ),
                                const Divider(
                                  thickness: 1.5,
                                ),
                                CupertinoTextField(
                                  placeholderStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 10, right: 6, bottom: 10),
                                  prefix: const Icon(
                                    CupertinoIcons.location_solid,
                                    color: Colors.grey,
                                    size: 30,
                                  ),
                                  placeholder: 'Location',
                                ),
                                const Divider(
                                  thickness: 1.5,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      CupertinoIcons.time_solid,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text(
                                      'Delivery Time',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.grey),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${tm.day} / ${tm.month} / ${tm.year}  ,  ${tm.hour}:${tm.minute}  ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade700),
                                    )
                                  ],
                                ),
                              ],
                            )),
                        Expanded(
                          flex: 6,
                          child: CupertinoDatePicker(
                            maximumDate: DateTime(2050),
                            minimumDate: DateTime(2000),
                            onDateTimeChanged: (DateTime value) {
                              setState(() {
                                tm = value;
                              });
                            },
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Added Items',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25),
                            ),
                          ),
                        )),
                        Expanded(
                          flex: 4,
                          child: (Selected.isNotEmpty)
                              ? SingleChildScrollView(
                                  child: Column(
                                      children: Selected.map((e) => Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: double.infinity,
                                                  child: Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 30,
                                                        backgroundImage:
                                                            AssetImage(
                                                                '${e['photo']}'),
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        '${e['name']}',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey.shade600,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                      const Spacer(),
                                                      Text(
                                                        'Rs ${e['price']} / -',
                                                        style: const TextStyle(
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Divider(
                                                  thickness: 0.5,
                                                  color: Colors.grey,
                                                ),
                                              ],
                                            ),
                                          )).toList()),
                                )
                              : Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      Icon(
                                        Icons.add_shopping_cart_outlined,
                                        size: 90,
                                        color: Colors.grey.shade300,
                                      ),
                                      Text(
                                        'No Items Added',
                                        style: TextStyle(
                                            color: Colors.grey.shade300,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w900),
                                      )
                                    ]),
                        ),
                        (Selected.isNotEmpty)
                            ? Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Divider(
                                      thickness: 2,
                                    ),
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text(
                                          'Shipping',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Rs 22 /-',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text(
                                          'Tax',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Rs 13 /-',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text(
                                          'Total',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey.shade600,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          (sum == 0)
                                              ? 'Rs 0 /-'
                                              : 'Rs ${sum - 22 - 13} /-',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.grey.shade600,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        )
                                      ],
                                    ),
                                  ],
                                ))
                            : Expanded(flex: 2, child: Container()),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: CupertinoTabBar(
                  currentIndex: currentValue,
                  onTap: (val) {
                    setState(() {
                      currentValue = val;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.list_bullet),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.search),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.add_circled_solid),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
