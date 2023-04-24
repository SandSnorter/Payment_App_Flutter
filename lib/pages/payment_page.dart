import 'package:flutter/material.dart';
import 'package:payment_app/pages/my_home_page.dart';
import 'package:payment_app/widgets/buttons.dart';
import 'package:payment_app/widgets/large_buttons.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
        height: h,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/paymentbackground.png"))),
        child: Column(
          children: [
            Container(
              height: h * 0.14,
              width: double.infinity,
              child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage("images/success.png")))),
            ),
            Container(
              child: const Text(
                "Success !",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF293952),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: const Text(
                "Payment is completed for 2 bills",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: h * 0.045),
            Container(
              width: 350,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: Colors.grey.withOpacity(0.5),
                  )),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 15, left: 20, bottom: 7),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.green,
                                ),
                                child: const Icon(Icons.done,
                                    size: 30, color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 11),
                                  Text(
                                    "KenGen Power",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF11324d),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "ID:4759379",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(children: const [
                                Text(
                                  "",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF11324d),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "\$1248.00",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF11324d),
                                  ),
                                ),
                              ])
                            ],
                          ),
                          Divider(
                              thickness: 2,
                              color: Colors.grey.withOpacity(0.5)),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: h * 0.05),
            Column(
              children: const [
                Text(
                  "Total Amount",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "\$2840.00",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF11324d),
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(height: h * 0.13),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButtons(
                  icon: Icons.share_sharp,
                  onTap: () {},
                  text: "Share",
                  backgroundColor: const Color(0xFF11324d),
                  textColor: const Color(0xFF11324d),
                ),
                SizedBox(width: w * 0.06),
                AppButtons(
                  icon: Icons.print_outlined,
                  onTap: () {},
                  text: "Print",
                  backgroundColor: const Color(0xFF11324d),
                  textColor: const Color(0xFF11324d),
                ),
              ],
            ),
            SizedBox(height: h * 0.02),
            AppLargeButton(
              text: "Done",
              backgroundColor: Colors.white,
              textColor: const Color(0xFF11324d),
              onTap: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
