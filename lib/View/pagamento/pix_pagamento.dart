import 'package:flutter/material.dart';

import '../menu_page.dart';

class PixPagamento extends StatelessWidget {
  const PixPagamento({Key? key, required this.plano}) : super(key: key);

  final double plano;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(35),
          child: AppBar(
            centerTitle: true,
            title: const Text('Pagamento Pix'),
            backgroundColor: const Color(0xff03191e),
          )),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 20),
                    child: Image.asset(
                      'assets/images/pix_logo.png',
                      fit: BoxFit.cover,
                      height: 80,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 380,
                      width: 300,
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 5.0, top: 10),
                            child: Text(
                              'Escaneie o código',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              'Para pagar, abra o app do seu banco, escolha a opção Pix e aponte a câmera para o código.',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset(
                              'assets/images/qr_code.png',
                              fit: BoxFit.contain,
                              height: 110,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Copie o código de pagamento',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: '02057673903293439855889',
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'COPIAR CÓDIGO',
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
                  padding: const EdgeInsets.only(top: 64),
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
