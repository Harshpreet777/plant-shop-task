import 'package:flutter/material.dart';
import 'package:navigation_task/model/detail_model.dart';
import 'package:navigation_task/routing/routes.dart';
import 'package:navigation_task/utils/color_constant.dart';
import 'package:navigation_task/utils/image_constant.dart';
import 'package:navigation_task/utils/string_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white54,
                child: Image.asset(ImageConstant.userImage),
              ),
            ],
          ),
          title: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  StringConstant.userTitle,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.black141d15),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  StringConstant.userName,
                  style: TextStyle(
                      color: ColorConstant.black141d15,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search_rounded,
                  color: ColorConstant.black141d15,
                  size: 32,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: const BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(70))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          StringConstant.cardHeader,
                          style: TextStyle(
                              color: ColorConstant.black141d15,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          StringConstant.cardTitle,
                          style: TextStyle(
                              color: ColorConstant.black141d15,
                              fontSize: 35,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          StringConstant.cardSubTitle,
                          style: TextStyle(
                              color: ColorConstant.black141d15,
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 140,
                      width: 140,
                      child: Image.asset(
                        ImageConstant.plant1,
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, bottom: 10),
                child: SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: StringConstant.stringList.length,
                    itemBuilder: (context, index) {
                      String data = StringConstant.stringList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          width: 100,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  side: MaterialStatePropertyAll(BorderSide(
                                      color: ColorConstant.black141d15,
                                      width: 2)),
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.transparent),
                                  padding: const MaterialStatePropertyAll(
                                      EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10))),
                              onPressed: null,
                              child: Text(
                                data,
                                style:
                                    TextStyle(color: ColorConstant.black141d15),
                              )),
                        ),
                      );
                    },
                  ),
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: ModelList.details.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  DetailModel data = ModelList.details[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(Routes.detailsRoute, arguments: data);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70)),
                              color: Colors.white54),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 170,
                                width: 170,
                                child: Image.asset(
                                  data.image.toString(),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                data.name,
                                style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                data.price,
                                style: TextStyle(
                                    color: ColorConstant.black141d15,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800),
                              ),
                              ElevatedButton(
                                  style: const ButtonStyle(
                                      side: MaterialStatePropertyAll(BorderSide(
                                          color: Colors.green,
                                          width: 2)),
                                      backgroundColor:
                                           MaterialStatePropertyAll(
                                              Colors.transparent)),
                                  onPressed: null,
                                  child: Text(
                                    StringConstant.addToCart,
                                    style: TextStyle(
                                        color: ColorConstant.black141d15,
                                        fontSize: 18),
                                  ))
                            ],
                          )),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          height: 100,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                color: ColorConstant.black141d15,
                size: 30,
              ),
              Icon(
                Icons.favorite_outline,
                color: ColorConstant.black141d15,
                size: 30,
              ),
              FloatingActionButton(
                shape: const CircleBorder(),
                elevation: 0,
                hoverColor: Colors.transparent,
                backgroundColor: ColorConstant.black141d15,
                onPressed: null,
                child: Icon(
                  Icons.add_box_outlined,
                  color: ColorConstant.backgroundColor,
                  size: 30,
                ),
              ),
              Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: ColorConstant.black141d15,
              ),
              Icon(
                Icons.person_outline_rounded,
                color: ColorConstant.black141d15,
                size: 30,
              )
            ],
          ),
        ));
  }
}
