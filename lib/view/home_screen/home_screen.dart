import 'package:flutter/material.dart';
import 'package:fluxstroe/model/home_screen_models/category_model.dart';
import 'package:fluxstroe/utils/constatns/color_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.filter_list_outlined),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_outlined),
            )
          ],
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: ColorConstants.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          title: Text("GemStore"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 34, right: 35, top: 36, bottom: 10),
            child: Column(
              children: [
                // categories secion
                _buildCategorySection()
                //carrousel section
              ],
            ),
          ),
        ));
  }

  Row _buildCategorySection() {
    final List<CategoryModel> categories = [
      CategoryModel(name: "Female", icon: Icons.female),
      CategoryModel(name: "Men", icon: Icons.female),
      CategoryModel(name: "Accessories", icon: Icons.female),
      CategoryModel(name: "Beauty", icon: Icons.female),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          4,
          (index) => InkWell(
                onTap: () {
                  setState(() {
                    selectedCategory = index;
                  });
                },
                child: Column(
                  spacing: 6,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              selectedCategory == index ? Border.all() : null),
                      child: CircleAvatar(
                        backgroundColor: selectedCategory == index
                            ? ColorConstants.dartGrey
                            : Colors.grey,
                        radius: 18,
                        child: Icon(
                          categories[index].icon,
                          color: ColorConstants.white,
                        ),
                      ),
                    ),
                    Text(categories[index].name,
                        style: TextStyle(
                            color: selectedCategory == index
                                ? ColorConstants.dartGrey
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 12))
                  ],
                ),
              )),
    );
  }
}
