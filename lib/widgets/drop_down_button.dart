import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class MyDropDownButton extends StatelessWidget {
  const MyDropDownButton(
    {
      super.key,
      required this.selectedCategory,
    }
  );

  final Category selectedCategory;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
                          value: selectedCategory,
                          items: Category.values
                              .map(
                                (category) => DropdownMenuItem(
                                  value: category,
                                  child: Text(
                                    category.name.toUpperCase(),
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            if (value == null) {
                              return;
                            }
                          });
  }
}