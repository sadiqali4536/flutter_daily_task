import 'dart:convert';
import 'package:daily_tasks/23-10-24/model/datamodel.dart';
import 'package:http/http.dart' as http;

// .create variable for url
class Dataservices {
  var url ="https://fakestoreapi.com/products";
// 2.create get function
Future<List<Datamodel>?> getmethod()async{
  var response = await http.get(Uri.parse(url));
  // 3. check connection
  if(response.statusCode == 200){
    // 4.json decode this
    var data = await json.decode(response.body);
    return List<Datamodel>.from(data.map((i) => Datamodel.fromJson(i)));
  }else{
    return null;
  }
}
}