import 'package:flutter/material.dart';
import 'package:modarakia/result.dart';
import 'package:modarakia/utils/constants.dart';
import 'package:modarakia/utils/utils.dart';

import 'genderPage.dart';

class FemmePage extends StatefulWidget {
  @override
  _FemmePageState createState() => _FemmePageState();
}

class _FemmePageState extends State<FemmePage> {
  int currentStep = 0; // Variable to keep track of the current step
  TextEditingController chestController = TextEditingController();
  TextEditingController waistController = TextEditingController();
  TextEditingController hipController = TextEditingController();
  String resultMessage = '';
  // final ValueNotifier<int> _button = ValueNotifier(0);

  // @override
  // void initState() {
  //   super.initState();
  //   TextEditingController chestController = TextEditingController();
  // }

  void calculateSize() {
  double chest = double.tryParse(chestController.text) ?? 0;
  double waist = double.tryParse(waistController.text) ?? 0;
  double hip = double.tryParse(hipController.text) ?? 0;

  int size = determineSize(chest, waist, hip);

  if (size != 0) {
    setState(() {
      resultMessage = "المقاس المناسب لك هو $size ";
    });
  } else {
    setState(() {
      resultMessage = 'لا يمكننا تحديد مقاسك باستخدام هذه القياسات';
    });
  }
}

int determineSize(double chest, double waist, double hip) {
  int sizeDuClient = 0;

  // Adjust chest measurement
  if (80 <= chest && chest <= 83) {
    sizeDuClient = 34;
  } else if (84 <= chest && chest <= 87) {
    sizeDuClient = 36;
  } else if (88 <= chest && chest <= 91) {
    sizeDuClient = 38;
  } else if (92 <= chest && chest <= 95) {
    sizeDuClient = 40;
  } else if (96 <= chest && chest <= 99) {
    sizeDuClient = 42;
  } else if (100 <= chest && chest <= 103) {
    sizeDuClient = 44;
  } else if (104 <= chest && chest <= 109) {
    sizeDuClient = 46;
  } else if (110 <= chest && chest <= 115) {
    sizeDuClient = 48;
  } else if (116 <= chest && chest <= 121) {
    sizeDuClient = 50;
  } else if (122 <= chest && chest <= 127) {
    sizeDuClient = 52;
  } else if (128 <= chest && chest <= 133) {
    sizeDuClient = 54;
  } else if (134 <= chest && chest <= 139) {
    sizeDuClient = 58;
  } else if (140 <= chest) {
    sizeDuClient = 60;
  }

  // Adjust waist measurement
  if (60 <= waist && waist <= 63) {
    sizeDuClient = sizeDuClient > 34 ? sizeDuClient : 34;
  } else if (64 <= waist && waist <= 67) {
    sizeDuClient = sizeDuClient > 36 ? sizeDuClient : 36;
  } else if (68 <= waist && waist <= 71) {
    sizeDuClient = sizeDuClient > 38 ? sizeDuClient : 38;
  } else if (72 <= waist && waist <= 75) {
    sizeDuClient = sizeDuClient > 40 ? sizeDuClient : 40;
  } else if (76 <= waist && waist <= 79) {
    sizeDuClient = sizeDuClient > 42 ? sizeDuClient : 42;
  } else if (80 <= waist && waist <= 83) {
    sizeDuClient = sizeDuClient > 44 ? sizeDuClient : 44;
  } else if (84 <= waist && waist <= 89) {
    sizeDuClient = sizeDuClient > 46 ? sizeDuClient : 46;
  } else if (90 <= waist && waist <= 95) {
    sizeDuClient = sizeDuClient > 48 ? sizeDuClient : 48;
  } else if (96 <= waist && waist <= 101) {
    sizeDuClient = sizeDuClient > 50 ? sizeDuClient : 50;
  } else if (102 <= waist && waist <= 107) {
    sizeDuClient = sizeDuClient > 52 ? sizeDuClient : 52;
  } else if (108 <= waist && waist <= 113) {
    sizeDuClient = sizeDuClient > 54 ? sizeDuClient : 54;
  } else if (114 <= waist && waist <= 119) {
    sizeDuClient = sizeDuClient > 58 ? sizeDuClient : 58;
  } else if (120 <= waist) {
    sizeDuClient = sizeDuClient > 60 ? sizeDuClient : 60;
  }

  // Adjust hip measurement
  if (86 <= hip && hip <= 89) {
    sizeDuClient = sizeDuClient > 34 ? sizeDuClient : 34;
  } else if (90 <= hip && hip <= 93) {
    sizeDuClient = sizeDuClient > 36 ? sizeDuClient : 36;
  } else if (94 <= hip && hip <= 97) {
    sizeDuClient = sizeDuClient > 38 ? sizeDuClient : 38;
  } else if (98 <= hip && hip <= 101) {
    sizeDuClient = sizeDuClient > 40 ? sizeDuClient : 40;
  } else if (102 <= hip && hip <= 105) {
    sizeDuClient = sizeDuClient > 42 ? sizeDuClient : 42;
  } else if (106 <= hip && hip <= 109) {
    sizeDuClient = sizeDuClient > 44 ? sizeDuClient : 44;
  } else if (110 <= hip && hip <= 115) {
    sizeDuClient = sizeDuClient > 46 ? sizeDuClient : 46;
  } else if (116 <= hip && hip <= 121) {
    sizeDuClient = sizeDuClient > 48 ? sizeDuClient : 48;
  } else if (122 <= hip && hip <= 127) {
    sizeDuClient = sizeDuClient > 50 ? sizeDuClient : 50;
  } else if (128 <= hip && hip <= 133) {
    sizeDuClient = sizeDuClient > 52 ? sizeDuClient : 52;
  } else if (134 <= hip && hip <= 139) {
    sizeDuClient = sizeDuClient > 54 ? sizeDuClient : 54;
  } else if (140 <= hip && hip <= 145) {
    sizeDuClient = sizeDuClient > 58 ? sizeDuClient : 58;
  } else if (146 <= hip) {
    sizeDuClient = sizeDuClient > 60 ? sizeDuClient : 60;
  }

  return sizeDuClient;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GenderPage(),
              ),
            );
          },
        ),
        title: const Text(
          'مقاس المرأة',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
        elevation: 8,
      ),
      body: Stepper(
        controlsBuilder: (context, details) {
          return Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                    onPressed: details.onStepCancel,
                    child: InkWell(
                      highlightColor: const Color.fromARGB(255, 0, 0, 0),
                      splashColor: Colors.transparent,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: 50,
                        width: 115,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 189, 187, 187),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'رجوع',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ),
                    )),
                TextButton(
                  onPressed: details.onStepContinue,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: MaterialButton(
                      onPressed: details.onStepContinue,
                      color: AppColor.primaryColor,
                      minWidth: 115,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'التالي',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]);
        },
        type: StepperType.horizontal,
        currentStep: currentStep,
        onStepTapped: (step) {
          setState(() {
            currentStep = step;
          });
        },
        onStepContinue: () {
          if (currentStep == 0 && chestController.text.isEmpty) {
            showSnackBar(
                'لم يتم إدخال قياس الصدر. يُرجى ملء هذا الحقل', context);
            chestController.text = '';
            return;
          }
          if (currentStep == 1 && waistController.text.isEmpty) {
            showSnackBar(
                'لم يتم إدخال قياس الخصر. يُرجى ملء هذا الحقل', context);
            waistController.text = '';
            return;
          }
          if (currentStep == 2 && hipController.text.isEmpty) {
            showSnackBar(
                'لم يتم إدخال قياس الورك. يُرجى ملء هذا الحقل', context);
            hipController.text = '';
            return;
          }
          if (currentStep == 0 && chestController.text.isNotEmpty) {
            if (double.tryParse(chestController.text)! < 80 ||
                double.tryParse(chestController.text)! > 140) {
              showSnackBar(
                  'هناك خطأ في قياس الصدر الذي أدخلته. يُرجى التأكد من إدخال قيمة صحيحة. ',
                  context);
              chestController.text = '';
              return;
            }
          }
          if (currentStep == 1 && waistController.text.isNotEmpty) {
            if (double.tryParse(waistController.text)! < 60 ||
                double.tryParse(waistController.text)! > 120) {
              showSnackBar(
                  'هناك خطأ في قياس الخصر الذي أدخلته. يُرجى التأكد من إدخال قيمة صحيحة. ',
                  context);
              waistController.text = '';
              return;
            }
          }
          if (currentStep == 2 && hipController.text.isNotEmpty) {
            if (double.tryParse(hipController.text)! < 86 ||
                double.tryParse(hipController.text)! > 146) {
              showSnackBar(
                  'هناك خطأ في قياس الورك الذي أدخلته. يُرجى التأكد من إدخال قيمة صحيحة. ',
                  context);
              hipController.text = '';
              return;
            }
          }
          if (currentStep < 2) {
            setState(() {
              currentStep += 1;
            });
          } else {
            calculateSize();
            double chest = double.tryParse(chestController.text) ?? 0;
            double waist = double.tryParse(waistController.text) ?? 0;
            double hip = double.tryParse(hipController.text) ?? 0;

            int chestResult = determineSize(chest, 0, 0);
            int waistResult = determineSize(0, waist, 0);
            int hipResult = determineSize(0, 0, hip);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Result(
                        resultMessage: resultMessage,
                        chestResult: chestResult,
                        hipResult: hipResult,
                        waistResult: waistResult,
                      )),
            );
          }
        },
        onStepCancel: () {
          if (currentStep > 0) {
            setState(() {
              currentStep -= 1;
            });
          } else {
            Navigator.pop(context);
          }
        },
        steps: [
          Step(
            title: const Text('الصدر'),
            content: Container(
              height: MediaQuery.of(context).size.height * .6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'أدخلي دوران صدرك ',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/chest.png'),
                  ),
                  TextFormField(
                    controller: chestController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintTextDirection: TextDirection.ltr,
                      contentPadding: EdgeInsets.symmetric(horizontal: 13),
                      labelText: 'دوران الصدر',
                      suffixText: '80-140',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 92, 91, 91),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        letterSpacing: 0.8,
                        height: 1.5,
                        decoration: TextDecoration.none,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 29, 28, 28),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Step(
            title: const Text('الخصر'),
            content: Container(
              height: MediaQuery.of(context).size.height * .6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'أدخلي دوران خصرك',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(height: 20,),
                  Container(
                    child: Image.asset('assets/images/midle.jpg'),
                  ),
                  TextFormField(
                    controller: waistController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      suffixText: '60-120',
                      contentPadding: EdgeInsets.symmetric(horizontal: 13),
                      labelText: 'دوران الخصر',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 92, 91, 91),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        letterSpacing: 0.8,
                        height: 1.5,
                        decoration: TextDecoration.none,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 29, 28, 28),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Step(
            title: const Text('الورك'),
            content: Container(
              height: MediaQuery.of(context).size.height * .6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    ' أدخلي دوران وركك',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(height: 20,),
                  Container(
                    child: Image.asset('assets/images/waist.png'),
                  ),
                  TextFormField(
                    controller: hipController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      suffixText: '86-146',
                      contentPadding: EdgeInsets.symmetric(horizontal: 13),
                      labelText: 'دوران الورك',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 92, 91, 91),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        letterSpacing: 0.8,
                        height: 1.5,
                        decoration: TextDecoration.none,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 29, 28, 28),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
