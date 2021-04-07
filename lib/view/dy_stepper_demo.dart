import 'package:flutter/material.dart';


class DYStepperDemo extends StatefulWidget {
  @override
  _DYStepperDemoState createState() => _DYStepperDemoState();
}

class _DYStepperDemoState extends State<DYStepperDemo> {

  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: Text('Stepper'),
        elevation: 0,
      ),

      body: Container(  
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.red,
              ), 
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (int currentStep) {
                  setState(() {
                    _currentStep = currentStep;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    _currentStep < 2 ? _currentStep++:_currentStep = 0;
                  
                  });
                },
                onStepCancel: () {
                  setState(() {
                    _currentStep > 0 ? _currentStep--:_currentStep = 0;
                  });
                },
                steps: [
                  Step(
                    title: Text('Login'), 
                    subtitle: Text('login info'),
                    content: Text('user login info '),
                    isActive: _currentStep == 0,
                  ),
                  Step(
                    title: Text('choose paln'), 
                    subtitle: Text('choose paln info'),
                    content: Text('user choose paln info '),
                    isActive: _currentStep == 1,

                  ),
                  Step(
                    title: Text('Confirm payment'), 
                    subtitle: Text('Confirm payment info'),
                    content: Text('user Confirm payment info '),
                    isActive: _currentStep == 2,
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