import 'package:flutter/material.dart';
import 'package:pim_unip/View/auth/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff03191e),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: 200,
              width: 300,
            ),
          ),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        )),
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(40),
                              )),
                          onPressed: () {},
                          child: const Text(
                            'Cadastrar',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          )),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
