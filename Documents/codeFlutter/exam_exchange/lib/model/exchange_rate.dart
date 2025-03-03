import 'dart:convert';

ExchangeRate exchangeRateFromJson(String str) =>
    ExchangeRate.fromJson(json.decode(str));

class ExchangeRate {
  String? provider;
  String? base;
  DateTime? date;
  Map<String, double>? rates;

  ExchangeRate({
    this.provider,
    this.base,
    this.date,
    this.rates,
  });

  factory ExchangeRate.fromJson(Map<String, dynamic> json) => ExchangeRate(
        provider: json["provider"],
        base: json["base"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        rates: Map.from(json["rates"]!)
            .map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
      );

}
