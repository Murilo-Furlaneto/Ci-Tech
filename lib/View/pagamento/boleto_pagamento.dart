import 'package:flutter/material.dart';

import '../menu_page.dart';

class BoletoPagamento extends StatelessWidget {
  const BoletoPagamento({Key? key, required this.plano}) : super(key: key);

  final double plano;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(35),
          child: AppBar(
            backgroundColor: const Color(0xff03191e),
            centerTitle: true,
            title: const Text('Pagamento Boleto'),
          )),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      height: 380,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 200,
                            width: 400,
                            child: Image.asset(
                              'assets/images/boleto_bancario.png',
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'IMPRIMIR',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MenuPage()));
                }),
                child: Padding(
                  padding: const EdgeInsets.only(top: 164),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.grey[200],
                          height: 50,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  'Você pagará',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 237),
                                child: Text(
                                  'R\$ $plano',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
