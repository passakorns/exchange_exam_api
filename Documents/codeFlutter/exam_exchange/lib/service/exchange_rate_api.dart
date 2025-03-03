import 'dart:convert';

import 'package:exam_exchange/model/exchange_rate.dart';
import 'package:http/http.dart' as http;
class ExchangeRateApi {

static Future<ExchangeRate> getExchageRate() async{
    String url = "https://api.exchangerate-api.com/v4/latest/THB";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = exchangeRateFromJson(json);

    return results;
  }
}