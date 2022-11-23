import 'package:flutter/material.dart';
import 'package:pim_unip/View/pagamento/pagamento_page.dart';

class PlanoPage extends StatelessWidget {
  const PlanoPage({Key? key}) : super(key: key);

  final double mensal = 39.99;
  final double semestral = 45.99;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 10),
                    //width: 400,
                    child: const Text(
                      'Escolha o melhor plano para você',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    width: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Plano Mensal',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'R\$ $mensal/mês',
                                style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 73),
                          child: SizedBox(
                            width: 200,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Plano Selecionado com sucesso',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      duration: Duration(milliseconds: 900),
                                    ),
                                  );
                                  Future.delayed(const Duration(seconds: 2),
                                      (() {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => PagamentoPage(
                                        plano: mensal,
                                      ),
                                    ));
                                  }));
                                },
                                child: const Text(
                                  'OBTER  MENSAL',
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Plano Semestral',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'R\$ $semestral/mês',
                                style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 73),
                          child: SizedBox(
                            width: 200,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Plano Selecionado com sucesso',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      duration: Duration(milliseconds: 900),
                                    ),
                                  );
                                  Future.delayed(const Duration(seconds: 2),
                                      (() {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => PagamentoPage(
                                        plano: semestral,
                                      ),
                                    ));
                                  }));
                                },
                                child: const Text(
                                  'OBTER  SEMESTRAL',
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
