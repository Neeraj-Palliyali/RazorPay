import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late Razorpay razorpay;

  @override
  void initState() {
    super.initState();
    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
    
  }

  @override
  void dispose() {
    
    super.dispose();
    razorpay.clear();
  }

  void handlerPaymentSuccess(){

  }

  void handlerErrorFailure(){}
  void handlerExternalWallet(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Razor Pay"),
      ),
      body: Column(
        children: [
          TextField(),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(onPressed: () => {}, child: Text("Pay Now")),
        ],
      ),
    );
  }
}
