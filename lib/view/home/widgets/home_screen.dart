import 'package:code_healers_sih/resources/color.dart';
import 'package:code_healers_sih/resources/dimensions.dart';
import 'package:code_healers_sih/resources/theme.dart';
import 'package:code_healers_sih/view/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {
        'image': 'assets/homescreen/Icon-cardiology-Small.png',
        'text': 'Symptoms Checker'
      },
      {'image': 'assets/homescreen/Group 279.png', 'text': 'Diet Plan'},
      {'image': 'assets/homescreen/Farmacy.png', 'text': 'Pill Identifier'},
      {'image': 'assets/homescreen/Farmacy.png', 'text': 'Med Reminder'},
    ];
    List<Map<String, String>> Category = [
        {
        'image': 'assets/homescreen/Icon-cardiology-Small.png',
        'text': 'Heart'
      },
      {'image': 'assets/homescreen/Group 279.png', 'text': 'Kidney'},
      {'image': 'assets/homescreen/Farmacy.png', 'text': 'Diabetes'},
      {'image': 'assets/homescreen/Farmacy.png', 'text': 'Lever'},
         {'image': 'assets/homescreen/Farmacy.png', 'text': 'Cancer'},
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: AppColor.lightBlue.withOpacity(0.1),
        title: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 200,
                width: 300,
                child: Image.asset("assets/homescreen/Group 330.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text(
                    "All Services for Your Health",
                    maxLines: 2,
                    style: AppTheme.getAppTheme().textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                Searchbar(Hint: "Search", isicon: true,)
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Top Specialities",
                style: AppTheme.getAppTheme().textTheme.displayMedium,
              ),
              SizedBox(height: 20),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 30, right: 8, left: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Get your Lab Reports Result Now",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTheme.getAppTheme().textTheme.displayLarge,
                        ),
                      ),
                      SizedBox(width: 8),
                      Flexible(
                        flex: 1,
                        child: Image.asset(
                          "assets/homescreen/Medical History-Big.png",
                          width: 60,
                          height: 60,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        elevation: 3,
                        child: Container(
                          width: 140,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                items[index]['image']!, // Access image path
                                width: 60,
                                height: 60,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(height: 8),
                              Text(
                                items[index]['text']!, // Access text
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
                Text(
                "Category",
                style: AppTheme.getAppTheme().textTheme.displayMedium,
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Category.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        elevation: 3,
                        child: Container(
                          width: 140,
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                Category[index]['image']!, // Access image path
                                width: 60,
                                height: 60,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(height: 8),
                              Text(
                                Category[index]['text']!, // Access text
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

