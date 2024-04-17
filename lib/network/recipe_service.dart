import 'dart:developer';
import 'package:http/http.dart';

const String apiKey = '87a357582a5bb4ba702baa521ca3e77b';
const String apiId = '6e4237bd';
const String apiUrl = 'https://api.edamam.com/search';

class RecipeService {
 // 1
 Future getData(String url) async {
 // 2
 final response = await get(Uri.parse(url));
 // 3
 if (response.statusCode == 200) {
 // 4
 return response.body;
 } else {
 // 5
 log(response.body);
 }
 }
 // 1
Future<dynamic> getRecipes(String query, int from, int to) async
{
 // 2
 final recipeData = await getData(
'$apiUrl?app_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to');
 // 3
 return recipeData;
}
}