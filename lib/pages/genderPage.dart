import 'package:flutter/material.dart';
import 'package:modarakia/utils/constants.dart';
import 'package:modarakia/utils/widgets.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'اختر المناسب',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        shadowColor: Colors.black,
        backgroundColor: AppColor.primaryColor,
        elevation: 8,
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/enfant');
                },
                child: Image.asset("assets/images/son.png"),
              )
            ),
      
             Expanded(
              flex: 5,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/femme');
                },
                child: Container(
                  color: AppColor.primaryColor,
                  child: Image.asset("assets/images/women.png",)),
              )
            ),
          ],
        ),
      ),
    );
  }
}
