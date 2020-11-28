import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class DataPulling {
  Client _client;

  DataPulling() {
    this._client = Client();
  }

  Future<Response> _grabJson() {
    String url =
        'https://api.covid19api.com/total/country/united-states/status/deaths?from=2020-11-26T00:00:00Z&to=2020-11-27T00:00:00Z';
    return _client.get(url);
  }


  FutureBuilder showInfo() {
    return FutureBuilder(
      future: _grabJson(),
      builder: (context, snapshot) {
        Widget retWidg = Icon(Icons.access_time);
        if (snapshot.hasData) {
          List map = jsonDecode(snapshot.data.body);
          String text1 = 'Deaths total: '+map[1]['Cases'].toString();
          String text2 = 'Deaths past 24hr: '+(map[1]['Cases']-map[0]['Cases']).toString();
          retWidg = Column(
            children: [
              Text(text1),
              Text(text2),
            ],
          );
        } else if(snapshot.hasError){
          retWidg = Text('has error');
        }
        return retWidg;
      },
    );
  }
}
