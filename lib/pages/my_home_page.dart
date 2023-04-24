import 'package:flutter/material.dart';
import 'package:payment_app/pages/payment_page.dart';
import 'package:payment_app/widgets/buttons.dart';
import 'package:payment_app/widgets/large_buttons.dart';
import 'package:payment_app/widgets/text_size.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listbills(),
            _payButton(),
          ],
        ),
      ),
    );
  }

  _headSection() {
    return Container(
      height: 310,
      child: Stack(
        children: [
          _mainBackground(),
          _curveImage(),
          _buttonContainer(),
          _textContainer(),
        ],
      ),
    );
  }

  _mainBackground() {
    return Positioned(
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("images/background.png")))));
  }

  _curveImage() {
    return Positioned(
      right: -4,
      bottom: 0,
      left: 0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.11,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/curve.png"))),
      ),
    );
  }

  _buttonContainer() {
    return Positioned(
      bottom: 0,
      left: 125,
      right: -125,
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet<dynamic>(
              isScrollControlled: true,
              barrierColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext bc) {
                return Container(
                  height: MediaQuery.of(context).size.height - 260,
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 0,
                          child: Container(
                            color: const Color(0xFFEEEEEE).withOpacity(0.7),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height - 309,
                          )),
                      Positioned(
                          top: 0,
                          right: 50,
                          child: Container(
                            padding: const EdgeInsets.only(bottom: 23),
                            width: 62,
                            height: 250,
                            decoration: BoxDecoration(
                              color: const Color(0xFF11324d),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AppButtons(
                                  icon: Icons.cancel,
                                  iconColor: const Color(0xFF11324d),
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                AppButtons(
                                  icon: Icons.add,
                                  iconColor: const Color(0xFF11324d),
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  onTap: () {},
                                  text: "Add Bill",
                                ),
                                AppButtons(
                                  icon: Icons.history,
                                  iconColor: const Color(0xFF11324d),
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  onTap: () {},
                                  text: "History",
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                );
              });
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(0, 1),
                  color: const Color(0xFF11324d).withOpacity(0.05),
                )
              ],
              image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("images/lines.png"))),
        ),
      ),
    );
  }

  _listbills() {
    return Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        top: 325,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (_, index) {
                return Container(
                  margin: const EdgeInsets.only(top: 20, right: 20),
                  height: 130,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFd8dbe0),
                          offset: Offset(1, 1),
                          blurRadius: 20,
                          spreadRadius: 10,
                        )
                      ]),
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: 3,
                                          color: Colors.grey,
                                        ),
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "images/brand1.png")))),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "KenGen Power",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.blue[1100],
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "ID:846594",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedText(
                              text: "Auto pay on 24th May 18",
                              color: Colors.green,
                            ),
                            const SizedBox(height: 5)
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 80,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey[300],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Select",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.blue[1100],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: Container()),
                                Text(
                                  "\$12.480",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.blue[1100],
                                  ),
                                ),
                                const Text(
                                  "Due in 3 days",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                            const SizedBox(width: 5),
                            Container(
                              height: 35,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ));
  }

  _payButton() {
    return Positioned(
        bottom: 20,
        child: AppLargeButton(
          text: "Pay all bills",
          textColor: Colors.white,
          onTap: () {
            Get.to(() => const PaymentPage());
          },
          backgroundColor: const Color(0xFF11324d),
        ));
  }

  _textContainer() {
    return Stack(
      children: const [
        Positioned(
            top: 100,
            left: 0,
            child: Text(
              "My Bills",
              style: TextStyle(
                fontSize: 70,
                color: Color(0xFF293952),
                fontWeight: FontWeight.bold,
              ),
            )),
        Positioned(
            top: 80,
            left: 40,
            child: Text(
              "My Bills",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
      ],
    );
  }
}
