import 'package:flutter/material.dart';

class Relatorio extends StatefulWidget {
  const Relatorio({Key? key}) : super(key: key);

  @override
  State<Relatorio> createState() => _RelatorioState();
}

class _RelatorioState extends State<Relatorio> {
  bool visible = false;
  bool visible2 = false;
  bool visible3 = false;

  @override
  void initState() {
    super.initState();
    visible = false;
    bool visible2 = false;
    bool visible3 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(35),
          child: AppBar(
            centerTitle: true,
            title: const Text('Relatórios'),
            backgroundColor: const Color(0xff03191e),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: GestureDetector(
                onTap: () => setState(() {
                  visible = !visible;
                }),
                child: const Center(
                  child: Text(
                    'Relatório de Planos',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            if (visible)
              Container(
                color: Colors.grey[200],
                height: 130,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              'Plano',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'Quantidade',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 26, top: 20),
                            child: Text(
                              'Mensal',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 240, top: 20),
                            child: Text(
                              '68',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 26, top: 20),
                            child: Text(
                              'Semestral',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 220, top: 20),
                            child: Text(
                              '84',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            // Relatório de cidades
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: GestureDetector(
                onTap: () => setState(() {
                  visible2 = !visible2;
                }),
                child: const Center(
                  child: Text(
                    'Relatório de Cidades Atendidas',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            if (visible2)
              Container(
                color: Colors.grey[200],
                height: 160,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              'Município',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'Quantidade',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 26, top: 20),
                            child: Text(
                              'Araraquara',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 220, top: 20),
                            child: Text(
                              '38',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 26, top: 20),
                            child: Text(
                              'Ribeirão Preto',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 198, top: 20),
                            child: Text(
                              '66',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 26, top: 20),
                            child: Text(
                              'São Carlos',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 223, top: 20),
                            child: Text(
                              '48',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            //Relatório de Pagamentos
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: GestureDetector(
                onTap: () => setState(() {
                  visible3 = !visible3;
                }),
                child: const Center(
                  child: Text(
                    'Relatório das formas de pagamento',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            if (visible3)
              Container(
                color: Colors.grey[200],
                height: 130,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              'Forma de Pagamento',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              'Quantidade',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 26, top: 20),
                            child: Text(
                              'Boleto',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 240, top: 20),
                            child: Text(
                              '44',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 26, top: 20),
                            child: Text(
                              'Cartão',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          child: const Padding(
                            padding: EdgeInsets.only(left: 237, top: 20),
                            child: Text(
                              '108',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
