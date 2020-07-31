import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
//
//class Price {
//  final String code;
//  final String symbol;
//  final String rate;
//  final String description;
//
//  Price({this.code, this.symbol, this.rate, this.description });

  final String URL = "https://api.coindesk.com/v1/bpi/currentprice.json";


  Map myData = {};
  String chartName ;

  Future getData(String _var) async {
    http.Response response = await http.get(URL);

    if (response.statusCode == 200) {
      String data = response.body;
      myData =  jsonDecode(data);
      var code = myData['bpi'][_var]['code'];
      var rate = myData['bpi'][_var]['rate'];
      var desciption = myData['bpi'][_var]['description'];
      var chartName =  myData['chartName'];

      List<String> list_data = [code,rate,desciption,chartName];
      return list_data;


//      var symbol = myData['bpi']['USD']['symbol'];
//      print(myData['bpi']['USD']['code']);
//      print(
//      print(myData['bpi']['USD']['description']);
//      print(myData['bpi']['USD']['symbol']);
//      print(myData['chartName']);
//      print(myData);
    }
    else {
      print(response.statusCode);
    }
  }



//  factory price.fromJson(Map<String , dynamic> json){
//    return price(
//        code: json['code'];
//        symbol: json['symbol'];
//        rate: json['rate'];
//    description: json['description'];
//    );
//  }








//class price {
//  String code;
//  String symbol;
//  String rate;
//  String description;
//
//  price({this.code, this.symbol, this.rate, this.description });
//}
  //
//  void printCard(String chartName,String description,String symbol,String code){
//    print('${chartName} rate for ${description} : ${symbol} ${code}');
//  }


//Map myData = {};
//Map object_bpi = {};
//
//var x ;
//String _var = 'USD';
//var code;
//var descripstion;
//
//String getData()  {
//  String  URL =  "https://api.coindesk.com/v1/bpi/currentprice.json";
//  Response response  =  get(URL);
//  Map myData = jsonDecode(response.body);
//  String _var = 'USD';
//  String chartName = myData['chartName'];
//  Map bpi = myData['bpi'];
//  Map object_bpi = bpi[_var];
//  var code = object_bpi['code'];
//  var description = object_bpi['description'];
//  var symbol = object_bpi['symbol'];
//  var rate = object_bpi['rate'];
//
//
//  return
//}
//  String URL = "https://api.coindesk.com/v1/bpi/currentprice.json";
//
//Future<void> getData() async {
//  String URL = "https://api.coindesk.com/v1/bpi/currentprice.json";
//  Response response = await get(URL);
//  Map myData = jsonDecode(response.body);
//
//  String _var = 'USD';
//  String chartName = myData['chartName'];
//  Map bpi = myData['bpi'];
//  Map object_bpi = bpi[_var];
//  var _code = object_bpi['code'];
//  var _description = object_bpi['description'];
//  var _symbol = object_bpi['symbol'];
//  var _rate = object_bpi['rate'];
//  List<price> items = [
//    price(code: '_code' , symbol: '_symbol',rate: '_rate',description: '_description'),
//  ];
//}

//@sealed class price {}







//  print(myData);
//  var x  = object_bpi['code'];
//  print('my code ---------------------${x}  ');
  //  print(symbol);
//  print(chartName);
//  print(object_bpi);
//  print('');


//  youchartName can used in DropdownButton
//  print(listDrop.keys);  //List<String> _list =
//  String description = object['description'];
//  print(description);
//print(_list);
//  print(object['code'])

