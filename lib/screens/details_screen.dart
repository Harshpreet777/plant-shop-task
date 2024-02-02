import 'package:flutter/material.dart';
import 'package:navigation_task/model/detail_model.dart';
import 'package:navigation_task/utils/color_constant.dart';
import 'package:navigation_task/utils/string_constant.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as DetailModel;
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 100,
        leading: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(40))),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
          ],
        ),
        centerTitle: true,
        title: Text(
          StringConstant.detailsTitle,
          style: TextStyle(
              color: ColorConstant.black141d15,
              fontSize: 25,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black26, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(40))),
            child: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                  size: 25,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                children: [
                  SizedBox(
                    height: 340,
                    width: 240,
                    child: Image.asset(
                      routeArgs.image.toString(),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        routeArgs.price.toString(),
                        style: TextStyle(
                            color: ColorConstant.black141d15,
                            fontSize: 25,
                            fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        StringConstant.temp,
                        style: const TextStyle(
                            color: Colors.black45, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        StringConstant.celcius,
                        style: TextStyle(
                            color: ColorConstant.black141d15,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        StringConstant.height,
                        style: const TextStyle(
                            color: Colors.black45, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        StringConstant.heighCM,
                        style: TextStyle(
                            color: ColorConstant.black141d15,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      routeArgs.name.toString(),
                      style: TextStyle(
                          color: ColorConstant.black141d15,
                          fontSize: 25,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Flexible(
                    child: RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.star,
                          color: ColorConstant.black141d15,
                          size: 20,
                        ),
                      ),
                      TextSpan(
                          text: '4.9 ',
                          style: TextStyle(
                              color: ColorConstant.black141d15,
                              fontSize: 17,
                              fontWeight: FontWeight.w800)),
                      const TextSpan(
                        text: '(269 Reviews)',
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      )
                    ])),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: StringConstant.plantDescription,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    )),
                TextSpan(
                    text: '...Learn More',
                    style: TextStyle(
                        color: ColorConstant.black141d15,
                        fontSize: 20,
                        fontWeight: FontWeight.w600))
              ])),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
            border: Border(
                right: BorderSide(color: ColorConstant.black141d15, width: 1.5),
                left: BorderSide(color: ColorConstant.black141d15, width: 1.5),
                top: BorderSide(color: ColorConstant.black141d15, width: 1.5)),
            color: Colors.white54,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                StringConstant.addToCart,
                style: TextStyle(
                    color: ColorConstant.black141d15,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 15,
              ),
              Icon(
                Icons.arrow_forward,
                color: ColorConstant.black141d15,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
