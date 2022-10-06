import 'package:get/get.dart';
import 'package:get_connect/api_provider.dart';
import 'package:get_connect/recipe_models.dart';

class Controllers extends GetxController with StateMixin<List<Recipe>> {
  final _apiProvider = ApiProvider();

  @override
  void onInit() async {
    super.onInit();
    // _apiProvider.getAllRecipe().then((response) {
    //   change(response, status: RxStatus.success());
    // }, onError: (err) {
    //   change(null, status: RxStatus.error(err.toString()));
    // });
    _apiProvider.getCatRecipe().then((response) {
      change(response, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  RxBool isEmpty = true.obs;
  List<Recipe>? recipe = [];

  Future getAllRecipe() async {
    try {
      recipe = await _apiProvider.getAllRecipe();
      print('recipe :$recipe');
      isEmpty.value = false;
    } catch (e) {
      print('err : $e');
      isEmpty.value = true;
    }
  }
}
