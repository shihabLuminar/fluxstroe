import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fluxstroe/model/home_screen_models/category_model.dart';
import 'package:fluxstroe/utils/constatns/color_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> carouselImages = [
    "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/794064/pexels-photo-794064.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/1462637/pexels-photo-1462637.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/845434/pexels-photo-845434.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
  ];
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
          child: Column(
            children: [
              // categories secion
              _buildCategorySection(),
              //carrousel section
              SizedBox(height: 30),
              _buildCarouselSection(),
              SizedBox(height: 35),
              // Featured Products section
              _builFeaturedProductsSection(),
              SizedBox(height: 20),
              _buildNewCollectionSection(),
              SizedBox(height: 20),
              _builRecommendedProductsSection(),
              SizedBox(height: 100),
            ],
          ),
        ));
  }

  Container _buildNewCollectionSection() {
    return Container(
      height: 158,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://www.shutterstock.com/image-illustration/clothes-on-grunge-background-shelf-600nw-1867100056.jpg"))),
    );
  }

  Widget _builRecommendedProductsSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 34, right: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 13, color: ColorConstants.lightGrey3),
                  )),
            ],
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(left: 34, right: 35),
            child: Row(
                spacing: 20,
                children: List.generate(
                  carouselImages.length,
                  (index) => Row(
                    spacing: 14,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 66,
                        width: 66,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  carouselImages[index],
                                ))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Featured Products",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                            "\$ 3.99",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        )
      ],
    );
  }

  Widget _builFeaturedProductsSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 34, right: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Featured Products",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 13, color: ColorConstants.lightGrey3),
                  )),
            ],
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(left: 34, right: 35),
            child: Row(
                spacing: 20,
                children: List.generate(
                  carouselImages.length,
                  (index) => Column(
                    spacing: 14,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 172,
                        width: 126,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  carouselImages[index],
                                ))),
                      ),
                      Text(
                        "Featured Products",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "\$ 3.99",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                )),
          ),
        )
      ],
    );
  }

  Widget _buildCarouselSection() {
    return Padding(
      padding: EdgeInsets.only(left: 34, right: 35),
      child: CarouselSlider.builder(
          options: CarouselOptions(
            height: 168,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayCurve: Curves.easeIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          itemCount: carouselImages.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                      decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(carouselImages[itemIndex])),
                    borderRadius: BorderRadius.circular(15),
                  ))),
    );
  }

  Widget _buildCategorySection() {
    final List<CategoryModel> categories = [
      CategoryModel(name: "Female", icon: Icons.female),
      CategoryModel(name: "Men", icon: Icons.female),
      CategoryModel(name: "Accessories", icon: Icons.female),
      CategoryModel(name: "Beauty", icon: Icons.female),
    ];
    return Padding(
      padding: EdgeInsets.only(left: 34, right: 35, top: 36),
      child: Row(
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
                            border: selectedCategory == index
                                ? Border.all()
                                : null),
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
      ),
    );
  }
}
