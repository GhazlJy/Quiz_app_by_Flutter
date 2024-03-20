import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets\\splash.jpg'),
            fit: BoxFit.cover,
          )),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: (MediaQuery.of(context).size.height) * 1 / 4,
              ),
              Image.asset(
                'assets\\logo.png',
                height: 450,
                width: 450,
              ),
              Text(
                "ITI QUIZ APP",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFFA8C7FD),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Coiny'),
              ),
              Text(
                "We Are Creative, enjoy ourgg App",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFA8C7FD),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            return Colors.transparent;
                          },
                        ),
                        shadowColor: MaterialStateProperty.all(
                            const Color.fromARGB(0, 212, 13, 13)), // بدون ظل
                      ),
                      onPressed: () {},
                      child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(250, 219, 239, 1),
                                Color(0xFFACC8F3)
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Container(
                              alignment: Alignment.center,
                              child: Text("START",
                                  style: TextStyle(
                                      color: Color(0xFF040207),
                                      fontSize: 20))))),
                ),
              )
            ],
          )),
    );
  }
}
