import 'package:exam_exchange/model/exchange_rate.dart';
import 'package:exam_exchange/service/exchange_rate_api.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ExchangeRate? dataFromAPI;

  @override
  void initState() {

    super.initState();
    
  }
  Future<void> fetchRate() async{
    final response = await ExchangeRateApi.getExchageRate();
    setState(() {
      dataFromAPI = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.purple,
            title: const Text('อัตราการแลกเปลี่ยนสกุลเงิน',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold))),

    );
  }
 
}
