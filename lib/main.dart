import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var monthchoose;
  var yearchoose;

  List month = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  List years = [
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
    '2009',
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
    '2024',
    '2025',
    '2026'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          child: Column(
            children: [
              header(),
              words(),
              SizedBox(height: 30),
              months(),
              or(),
              monthyear(),
              almostbutton(),
            ],
          ),
        ),
      ],
    ));
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Icon(
              Icons.arrow_back,
              color: Colors.amber,
            ),
          ),
          /*  Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: */
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 13,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber),
              ),
            ),
          ),
          //)
        ],
      ),
    );
  }

  Widget words() {
    return SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Customize",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                  ), //),
                  child: Text(
                    "When are you planning for your GRE ?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'OpenSans'),
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  Widget months() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey, width: 2),
              color: Color(0xFF3A3B3C),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    left: 5.0,
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.check_circle_rounded),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(" 3 Months",
                              style: TextStyle(
                                  fontFamily: 'OpenSans', color: Colors.grey)),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    left: 5.0,
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.check_circle_rounded),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(" 6 Months",
                              style: TextStyle(
                                  fontFamily: 'OpenSans', color: Colors.grey)),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    left: 5.0,
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.check_circle_rounded),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(" 9 Months",
                              style: TextStyle(
                                  fontFamily: 'OpenSans', color: Colors.grey)),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    left: 5.0,
                    bottom: 5.0,
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(Icons.check_circle_rounded),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(" 12 Months",
                              style: TextStyle(
                                  fontFamily: 'OpenSans', color: Colors.grey)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget or() {
    return SafeArea(
        child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 15.0),
                child: Text(
                  "(OR)",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ))));
  }

  Widget monthyear() {
    return SafeArea(
        child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 5.0, left: 15.0),
                                child: Text(
                                  "Month",
                                  style: TextStyle(
                                      fontFamily: "OpenSans",
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                                padding:
                                    EdgeInsets.only(left: 16.0, right: 16.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 2.0),
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                  hint: Text("Months",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                      )),
                                  icon: Icon(Icons.arrow_drop_down),
                                  iconSize: 36.0,
                                  value: monthchoose,
                                  onChanged: (newValue) {
                                    setState(() {
                                      monthchoose = newValue;
                                    });
                                  },
                                  items: month.map((valueItem) {
                                    return DropdownMenuItem(
                                        value: valueItem,
                                        child: Text(valueItem));
                                  }).toList(),
                                )))
                          ]),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5.0, left: 15.0),
                                    child: Text(
                                      "Year",
                                      style: TextStyle(
                                          fontFamily: "OpenSans",
                                          fontWeight: FontWeight.bold),
                                    )),
                                Container(
                                    padding: EdgeInsets.only(
                                        left: 16.0, right: 16.0),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 2.0),
                                        borderRadius:
                                            BorderRadius.circular(15.0)),
                                    child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                      hint: Text("Year",
                                          style: TextStyle(
                                            fontFamily: "OpenSans",
                                          )),
                                      icon: Icon(Icons.arrow_drop_down),
                                      iconSize: 36.0,
                                      value: yearchoose,
                                      onChanged: (newValue) {
                                        setState(() {
                                          yearchoose = newValue;
                                        });
                                      },
                                      items: years.map((valueItem) {
                                        return DropdownMenuItem(
                                            value: valueItem,
                                            child: Text(valueItem));
                                      }).toList(),
                                    )))
                              ]),
                        ),
                      ),
                    ]))));
  }

  Widget almostbutton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: SizedBox(
          width: 375,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                width: 2,
                color: Colors.red,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () {},
            child: Text(
              'Almost Done',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
