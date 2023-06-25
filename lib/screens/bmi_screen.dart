import 'dart:math';
import 'package:bmi/utilities/app_colors.dart';
import 'package:flutter/material.dart';
import '../material/button_widget.dart';

class BMIScreen extends StatefulWidget {
  static String routeName = "bmi screen";

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isKeyboardDisplay = true;
  bool weightSelected = true;
  String weight = "";
  String height = "";
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "BMI",
          style: TextStyle(fontSize: 28, color: AppColors.greyColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      elevation: 8,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.35,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "WEIGHT",
                          style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (weightSelected) {
                          weightSelected = false;
                        } else {
                          weightSelected = true;
                        }
                        setState(() {});
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weight == "" ? "0.0" : weight,
                            style: TextStyle(
                                color: weightSelected
                                    ? AppColors.accentColor
                                    : AppColors.greyColor,
                                fontSize: 28,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "kilogram",
                            style: TextStyle(
                                color: AppColors.greyColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      elevation: 8,
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.35,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "HEIGHT",
                          style: TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (weightSelected) {
                          weightSelected = false;
                        } else {
                          weightSelected = true;
                        }
                        setState(() {});
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            height == "" ? "0.0" : height,
                            style: TextStyle(
                                color: weightSelected
                                    ? AppColors.greyColor
                                    : AppColors.accentColor,
                                fontSize: 28,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "centimeter",
                            style: TextStyle(
                                color: AppColors.greyColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
          const Spacer(
            flex: 1,
          ),
          Divider(
            thickness: 3,
            color: Colors.grey[300],
          ),
          const Spacer(
            flex: 1,
          ),
          if (isKeyboardDisplay)
            Expanded(
                flex: 8,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 9,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ButtonWidget(
                                  digitName: "7",
                                  onClick: onClick,
                                ),
                                ButtonWidget(
                                  digitName: "8",
                                  onClick: onClick,
                                ),
                                ButtonWidget(
                                  digitName: "9",
                                  onClick: onClick,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ButtonWidget(
                                  digitName: "4",
                                  onClick: onClick,
                                ),
                                ButtonWidget(
                                  digitName: "5",
                                  onClick: onClick,
                                ),
                                ButtonWidget(
                                  digitName: "6",
                                  onClick: onClick,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ButtonWidget(
                                  digitName: "1",
                                  onClick: onClick,
                                ),
                                ButtonWidget(
                                  digitName: "2",
                                  onClick: onClick,
                                ),
                                ButtonWidget(
                                  digitName: "3",
                                  onClick: onClick,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Spacer(),
                                ButtonWidget(
                                  digitName: "0",
                                  onClick: onClick,
                                ),
                                ButtonWidget(
                                  digitName: ".",
                                  onClick: onClick,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                onDeleteClick();
                              },
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(25)),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Text(
                                    "AC",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.accentColor),
                                  ),
                                ),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                if (weightSelected) {
                                  weightSelected = false;
                                } else {
                                  weightSelected = true;
                                }
                                setState(() {});
                              },
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(25)),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Icon(
                                    Icons.arrow_back_outlined,
                                    color: AppColors.accentColor,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                if (height != "" && weight != "") {
                                  calculateBMI();
                                  setState(() {
                                    isKeyboardDisplay = false;
                                  });
                                }
                              },
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(25),
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: Text(
                                    "GO",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.accentColor),
                                  ),
                                ),
                              ),
                            ),
                          )),
                        ],
                      ),
                    )
                  ],
                ))
          else
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 20.0),
                        child: Material(
                          elevation: 15,
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: Column(
                              children: [
                                Expanded(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          result,
                                          style: TextStyle(
                                              fontSize: 60,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.accentColor),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "BMI",
                                          style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.greyColor),
                                        ),
                                        categoryOfBMI()
                                      ],
                                    )
                                  ],
                                )),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              const Text(
                                                "Underweight",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.1,
                                              ),
                                              const Text("Normal",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.1,
                                              ),
                                              const Text(
                                                "Overweight",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: AppColors
                                                        .underWeightColor,
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(5),
                                                      bottomLeft:
                                                          Radius.circular(5),
                                                    )),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.28,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01,
                                              ),
                                              Container(
                                                color:
                                                    AppColors.normalWeightColor,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.29,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: AppColors
                                                        .overWeightColor,
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(5),
                                                      bottomRight:
                                                          Radius.circular(5),
                                                    )),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.28,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.01,
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: FittedBox(
                        child: FloatingActionButton(
                          backgroundColor: AppColors.primaryColor,
                          onPressed: () {
                            isKeyboardDisplay = true;
                            setState(() {});
                          },
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 25,
                            color: AppColors.accentColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          const Spacer(
            flex: 1,
          ),
          // Expanded(child: Row()),
        ],
      ),
    );
  }

  onClick(String digitName) {
    if (weightSelected) {
      weight = weight + digitName;
    } else {
      height = height + digitName;
    }
    setState(() {});
  }

  onDeleteClick() {
    if (weightSelected) {
      weight = "";
    } else {
      height = "";
    }
    setState(() {});
  }

  void calculateBMI() {
    double tmpResult =
        (double.parse(weight)) / (pow((double.parse(height)) / 100, 2));
    result = ((tmpResult * 10).ceil() / 10).toString();
  }

  Widget categoryOfBMI() {
    if (double.parse(result) < 18.5) {
      return Text("Underweight",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColors.underWeightColor));
    } else if (double.parse(result) >= 18.5 && double.parse(result) < 25) {
      return Text("Normal",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColors.normalWeightColor));
    } else {
      return Text("Overweight",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColors.overWeightColor));
    }
  }
}
