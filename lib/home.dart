import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var result = '';
  var delt;
  var eq = '';
  // var indexresult = (result.length)-1;
  Widget btn(var name) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 1,
              offset: Offset(0, 2),
            ),
          ]),
      child: TextButton(
        onPressed: () {
          setState(() {
            result = result + name;
            eq = eq + name;
          });
        },
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
    );
  }

  output() {
    // Parser p = Parser();

    // Expression exp = p.parse(result);

    // ContextModel cm = ContextModel();
    // double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      // result = eval.toString();
    });
  }

  dt() {
    setState(() {
      delt = result.length - 1;
      print(result);
      print(delt);

      if (result.length > 0) {
        result = result.substring(0, delt);
      } else {
        result = '';
      }
      // result.length > 0 ? result = result.substring(0, delt) : result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            SizedBox(
              height: 15,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ]),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      eq,
                      style: TextStyle(fontSize: 25),
                    ))),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ]),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      result,
                      style: TextStyle(fontSize: 25),
                    ))),
          ]),
          Container(
            // height: MediaQuery.of(context).size.height * 0.60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      btn("7"),
                      btn("8"),
                      btn("9"),
                      Container(width: 80, child: btn("+")),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    btn("4"),
                    btn("5"),
                    btn("6"),
                    Container(width: 80, child: btn("-")),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    btn("1"),
                    btn("2"),
                    btn("3"),
                    Container(width: 80, child: btn("*")),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    btn("."),
                    btn("0"),
                    btn("00"),
                    Container(width: 80, child: btn("/")),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(0, 2),
                            ),
                          ]),
                      child: TextButton(
                        onPressed:
                            // dt
                            () {},
                        child: Text(
                          "Delete",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(0, 2),
                            ),
                          ]),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            result = '';
                            eq = '';
                          });
                        },
                        child: Text(
                          "Clear",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 1,
                              offset: Offset(0, 2),
                            ),
                          ]),
                      child: TextButton(
                        onPressed: output,
                        child: Text(
                          "=",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    Container(width: 80, child: btn("%")),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
