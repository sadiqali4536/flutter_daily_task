import 'package:daily_tasks/23-10-24/model/datamodel.dart';
import 'package:daily_tasks/23-10-24/services/dataservices.dart';
import 'package:get/get.dart';

class Datacontroller extends GetxController{
  var DataList =<Datamodel>[].obs;
  var loadind =true.obs;





  getData()async{
    loadind.value=true;
    var datas =await Dataservices().getmethod();
    try{
      if(datas!=null){
        DataList.value = datas;
        loadind.value=false;
      }
    }catch(e){
      Get.snackbar("title", "$e");
      loadind.value=true;
  } finally{
      loadind.value=false;
    }
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}