import 'package:flutter/material.dart';
import 'package:flutter_credit_card_brazilian/credit_card_form.dart';
import 'package:flutter_credit_card_brazilian/credit_card_model.dart';
import 'package:flutter_credit_card_brazilian/credit_card_widget.dart';

import '../menu_page.dart';

class CartaoPagamento extends StatefulWidget {
  const CartaoPagamento({Key? key, required this.plano}) : super(key: key);
  final double plano;

  @override
  State<CartaoPagamento> createState() => _CartaoPagamentoState();
}

class _CartaoPagamentoState extends State<CartaoPagamento> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(35),
          child: AppBar(
            backgroundColor: const Color(0xff03191e),
            centerTitle: true,
            title: const Text('Cartão de Crédito'),
          )),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Cartão de crédito
                CreditCardWidget(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView:
                      isCvvFocused, //true when you want to show cvv(back) view
                ),

                //Formulário
                SizedBox(
                  height: 340,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: CreditCardForm(
                          cardNumber: cardNumber,
                          expiryDate: expiryDate,
                          cardHolderName: cardHolderName,
                          cvvCode: cvvCode,
                          onCreditCardModelChange: onCreditCardModelChange,
                          themeColor: Colors.blue,
                          formKey: formKey,
                          cardNumberDecoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Número do cartão',
                              hintText: 'XXXX XXXX XXXX XXXX',
                              isDense: true),
                          expiryDateDecoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Validade',
                              hintText: 'XX/XX',
                              isDense: true),
                          cvvCodeDecoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'CVV',
                              hintText: 'XXX',
                              isDense: true),
                          cardHolderDecoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Nome completo',
                              isDense: true),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          backgroundColor: const Color(0xff1b447b),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          child: const Text(
                            'Validar',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'halter',
                              fontSize: 14,
                              package: 'flutter_credit_card',
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            print('valido!');
                          } else {
                            print('invalid!');
                          }
                        },
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (() {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MenuPage()));
                    }
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
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
                                    'R\$ ${widget.plano}',
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
      ),
    );
  }
}
