import 'package:flutter/material.dart';
import 'package:category_picker/category_picker.dart';
import 'package:category_picker/category_picker_item.dart';
import 'package:cocktail/pages/extra/DetailsDrinks/showsearch.dart';

Widget categoryPicker(context){
  return Center(
    child: CategoryPicker(
      categoryPickerMargin: const EdgeInsets.all(2),
      selectedItemColor: const Color(0xff310058),
      items: [
        CategoryPickerItem(
          value: "All",
          label: "All",
        ),
        CategoryPickerItem(
          value: "Gin",
          label: "Gin",
        ),
        CategoryPickerItem(
          value: "Vodka",
          label: "Vodka",
        ),
        CategoryPickerItem(
          value: "Galliano",
          label: "Galliano",
        ),
        CategoryPickerItem(
          value: "Ginger ale",
          label: "Ginger ale",
        ),
        CategoryPickerItem(
          value: "Ice",
          label: "Ice",
        ),
        CategoryPickerItem(
          value: "Grand Marnier",
          label: "Grand Marnier",
        ),
        CategoryPickerItem(
          value: "Lemon Juice",
          label: "Lemon Juice",
        ),
        CategoryPickerItem(
          value: "Grenadine",
          label: "Grenadine",
        ),
        CategoryPickerItem(
          value: "Amaretto",
          label: "Amaretto",
        ),
        CategoryPickerItem(
          value: "Baileys irish cream",
          label: "Baileys irish cream",
        ),
        CategoryPickerItem(
          value: "Cognac",
          label: "Cognac",
        ),
        CategoryPickerItem(
          value: "Creme de Cassis",
          label: "Creme de Cassis",
        ),
        CategoryPickerItem(
          value: "Champagne",
          label: "Champagne",
        ),
        CategoryPickerItem(
          value: "Kahlua",
          label: "Kahlua",
        ),
        CategoryPickerItem(
          value: "Baileys irish cream",
          label: "Baileys irish cream",
        ),
        CategoryPickerItem(
          value: "Frangelico",
          label: "Frangelico",
        ),
        CategoryPickerItem(
          value: "151 proof rum",
          label: "151 proof rum",
        ),
        CategoryPickerItem(
          value: "Wild Turkey",
          label: "Wild Turkey",
        ),
        CategoryPickerItem(
          value: "Heavy cream",
          label: "Heavy cream",
        ),
        CategoryPickerItem(
          value: "Milk",
          label: "Milk",
        ),
        CategoryPickerItem(
          value: "Egg White",
          label: "Egg White",
        ),
      ],
      onValueChanged: (value) {
        String url='www.thecocktaildb.com/api/json/v1/1/filter.php?i=';
        showsearch(context, value.label,url);
      }
    ),
  );
}