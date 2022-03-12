import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_cal/app/modules/home/views/AnimatedAppBar.dart';
import 'package:loan_cal/app/modules/home/views/repeatedCard.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

 



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey.shade300,
      appBar: AnimatedAppBar("       EMI \n CALCULATOR "),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RepeatedCard(
              labelText: "Enter the Principal Amount",
              onPressed: (val) {
                print(val);
              },
            ),
            const SizedBox(
              height: 5,
            ),
            RepeatedCard(
              labelText: "Enter the Principal Amount",
              onPressed: (val) {
                print(val);
              },
            ),
            const SizedBox(
              height: 5,
            ),
            RepeatedCard(
              labelText: "Enter the Principal Amount",
              onPressed: (val) {
                print(val);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: const Padding(
                    padding: EdgeInsets.fromLTRB(28, 12, 28, 12),
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            
          ],
        ),
      ),
    );
  }


}
