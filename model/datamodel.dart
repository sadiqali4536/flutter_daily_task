// 1.create class
class Datamodel {
  int? id;
  String? title;
  num? price;
  String? image;
  RatingModel? rating;
// 2.create constructor
  Datamodel({this.id,this.title,this.price,this.image,this.rating});
  // 2.create jsonfrom
  static Datamodel fromJson(Map<String,dynamic>json){
    return Datamodel(
      id: json["id"],
      title: json["title"],
      price: json["price"],
      image :  json["image"],
      rating: RatingModel.fromjson(json["rating"])
    );
  }
  // 2.create  to json
  Map<String,dynamic> tojson(){
    return {
    "id":id,
    "title":title,
    "price":price,
    "image":image,
    };
  }
}


// rating class creating
class RatingModel{
  num? rating;
  int? count;
  RatingModel({this.rating,this.count});
  static RatingModel fromjson(Map<String,dynamic>json){
    return RatingModel(
      rating: json["rate"],
      count: json["count"]
    );
  }
Map<String,dynamic>tojson(){
  return {
"rate":rating,
"count":count,
  };
}
}

