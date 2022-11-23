import 'package:flutter/material.dart';
import 'package:pim_unip/View/pagamento/boleto_pagamento.dart';
import 'package:pim_unip/View/pagamento/cartao_pagamento.dart';
import 'package:pim_unip/View/pagamento/pix_pagamento.dart';

class PagamentoPage extends StatelessWidget {
  const PagamentoPage({Key? key, required this.plano}) : super(key: key);

  final double plano;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(35),
        child: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text('Forma de pagamento'),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Expanded(
                  child: Container(
                    //margin: const EdgeInsets.symmetric(horizontal: 30),
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 50,
                          child: ClipRRect(
                              child: Image.asset(
                            'assets/images/pix.png',
                            scale: 20,
                          )),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 0),
                          child: Text(
                            'Pix',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 287),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        PixPagamento(plano: plano)));
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 15,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Container(
                //margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      child: ClipRRect(
                          child: Image.asset(
                        'assets/images/cartao.png',
                        height: 30,
                        scale: 20,
                      )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        'Cartão de Crédito',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 183),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => CartaoPagamento(
                                      plano: plano,
                                    ))));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 15,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Container(
                //: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      child: ClipRRect(
                          child: Image.asset(
                        'assets/images/boleto.png',
                        height: 30,
                        //scale: ,
                      )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        'Boleto',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 260),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    BoletoPagamento(plano: plano)));
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 15,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 340),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white,
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
        ],
      ),
    );
  }
}
