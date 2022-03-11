import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_cal/app/modules/home/views/AnimatedAppBar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

  final String _emiResult = "" ;
  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      appBar: AnimatedAppBar("       EMI \n CALCULATOR "),
      body: Center(
        child: Column(
          children: [
            RepeatedCard(
                textField: TextField(
                  controller: _principalAmount ,
              decoration: const InputDecoration(labelText: "Enter Principal Amount"),
                  keyboardType: TextInputType.number,

            )),
            const SizedBox(
              height: 5,
            ),
            RepeatedCard(
                textField: TextField(
                  controller: _interestRate,
              decoration: const InputDecoration(labelText: "Enter Interest"),
                  keyboardType: TextInputType.number,

            )),
            const SizedBox(
              height: 5,
            ),
            RepeatedCard(
                textField: TextField(
                  controller: _tenure,
              decoration: const InputDecoration(labelText: "Tenure"),
                  keyboardType: TextInputType.number,
            )),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                _calculation;
              },
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
                    )
                    ),
              ),
            ),
            const SizedBox(height: 20,),
            emiResult(_emiResult)
          ],
        ),
      ),
    );
  }




  Widget emiResult(emiResult){
    bool canShow = false;
    String _emiResult = emiResult;

    if(_emiResult.isNotEmpty){
      canShow = true;
    }

    return canShow ? Column(
      children: [
        const Text("Your Monthly EMI is",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(_emiResult,
          style: const TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ):Container();
  }
}


class RepeatedCard extends StatelessWidget {
  RepeatedCard({required this.textField});

  final Widget textField;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: textField,
        ),
      ),
    );
  }
}
