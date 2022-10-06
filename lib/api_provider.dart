import 'package:get/get.dart';
import 'package:get_connect/recipe_models.dart';

class ApiProvider extends GetConnect {
  Future<List<Recipe>> getAllRecipe() async {
    try {
      var response = await get(
        'https://masak-apa-tomorisakura.vercel.app/api/recipes',
      );

      ResponseResultRecipe responseResult =
          ResponseResultRecipe.fromJson(response.body);

      List<Recipe> recipeList = responseResult.results;

      print('Recipe : ${recipeList[0].title}');

      return recipeList;
    } catch (e) {
      return [];
    }
  }

  Future<List<Recipe>> getCatRecipe() async {
    try {
      var response = await get(
        'https://masak-apa-tomorisakura.vercel.app/api/category/recipes/masakan-hari-raya',
      );

      ResponseResultRecipe responseResult =
          ResponseResultRecipe.fromJson(response.body);

      List<Recipe> recipeList = responseResult.results;

      print('RecipeCat : ${recipeList[0].title}');

      return recipeList;
    } catch (e) {
      return [];
    }
  }
}
