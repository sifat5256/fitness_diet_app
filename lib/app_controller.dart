
import 'package:get/get.dart';

class AppController extends GetxController{

var selectedIndex=0.obs;

void selectedTabIndex(int index){

  selectedIndex.value=index;


}

}