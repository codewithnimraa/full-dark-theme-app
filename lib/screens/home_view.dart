import 'package:flutter/material.dart';
import 'package:newdarkthemeapp/routes/homepage.dart';
import 'package:newdarkthemeapp/routes/provider.dart';
import 'package:newdarkthemeapp/screens/home_viewmodel.dart';
import 'package:provider/provider.dart';

import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final darkModeModel = Provider.of<DarkModeModel>(context);
    bool isDarkMode = darkModeModel.isDarkMode;

    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: !isDarkMode
                  ? Color.fromARGB(255, 226, 136, 166)
                  : Color.fromARGB(255, 58, 58, 58),
              title: Center(
                child: Text('Dark Theme App'),
              ),
              leading: Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  icon: Icon(
                    Icons.lightbulb,
                    color: !isDarkMode ? Colors.black : Colors.yellow,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()));
                  },
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/cake.jpg',
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Australia wild cake',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 26,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700),
                    ),
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4.6',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 14,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 14,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Ingredients:',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('• 2 cups of flour'),
                    const Text('• 1 1/2 cups of sugar'),
                    const Text('• 1/2 cup of butter'),
                    const Text('• 1 cup of milk'),
                    const Text('• 2 eggs'),
                    const Text('• 2 teaspoons of baking powder'),
                    const Text('• 1 teaspoon of vanilla extract'),
                    const Text('• 1/2 teaspoon of salt'),
                    const SizedBox(height: 10),
                    const Text(
                      'Directions:',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Step 1',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: !isDarkMode
                            ? Color.fromARGB(255, 226, 136, 166)
                            : Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'Gather all ingredients. Preheat the oven to 350 degrees F (175 degrees C). Lightly coat a 9x13-inch baking pan with baking spray; set aside.',
                      textAlign: TextAlign.left,
                    ),
                    Image.asset("assets/step1.webp"),
                    const SizedBox(height: 10),
                    Text(
                      'Step 2',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: !isDarkMode
                            ? Color.fromARGB(255, 226, 136, 166)
                            : Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'Whisk together cake mix, buttermilk, oil, eggs, and food coloring in a medium bowl until fully combined and no dry streaks remain. Transfer to the prepared baking pan and spread in an even layer.',
                      textAlign: TextAlign.left,
                    ),
                    Image.asset("assets/step22.webp"),
                    const SizedBox(height: 10),
                    Text(
                      'Step 3',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: !isDarkMode
                              ? Color.fromARGB(255, 226, 136, 166)
                              : Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Bake in the preheated oven until a wooden pick inserted in center comes out clean, 20 to 25 minutes. Let cool completely in pan on a wire rack, about 1 hour.',
                      textAlign: TextAlign.left,
                    ),
                    Image.asset("assets/step33.jpg"),
                    const SizedBox(height: 10),
                    Text(
                      'Step 4',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: !isDarkMode
                              ? Color.fromARGB(255, 226, 136, 166)
                              : Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Beat cream cheese and butter with an electric mixer on medium speed until light and fluffy, 1 to 2 minutes.',
                      textAlign: TextAlign.left,
                    ),
                    Image.asset("assets/step444.webp"),
                    const SizedBox(height: 10),
                    Text(
                      'Step 5',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: !isDarkMode
                              ? Color.fromARGB(255, 226, 136, 166)
                              : Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Gradually beat in powdered sugar with mixer on low speed, until smooth and fully combined, stopping to scrape down sides of bowl as needed, about 3 minutes. Add Pink Color and salt and beat until just combined.',
                      textAlign: TextAlign.left,
                    ),
                    Image.asset("assets/step55.webp"),
                    const SizedBox(height: 10),
                    Text(
                      'Step 6',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: !isDarkMode
                              ? Color.fromARGB(255, 226, 136, 166)
                              : Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Using an offset spatula, spread cream cheese frosting evenly over the top of the cooled cake. Garnish with chocolates, if desired.',
                      textAlign: TextAlign.left,
                    ),
                    Image.asset("assets/step66.jpg"),
                    const SizedBox(height: 10),
                    Text(
                      'Step 7',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: !isDarkMode
                              ? Color.fromARGB(255, 226, 136, 166)
                              : Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700),
                    ),
                    const Text(
                      'Garnish with chocolates, if desired.',
                      textAlign: TextAlign.left,
                    ),
                    Image.asset("assets/step77.jpg"),
                    const SizedBox(height: 20),
                    const Text(
                      "Nutrition Facts ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" 209 Calories "),
                        Text("9g Fat"),
                        Text("29g Carbs"),
                        Text("3g Protein"),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Image.asset(
                      "assets/step88.jpg",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 50,
                          height: 2,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: !isDarkMode
                                ? Color.fromARGB(255, 226, 136, 166)
                                : Color.fromARGB(255, 250, 248, 248),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 9,
                          height: 9,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: !isDarkMode
                                ? Color.fromARGB(255, 226, 136, 166)
                                : Color.fromARGB(255, 250, 248, 248),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 9,
                          height: 9,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: !isDarkMode
                                ? Color.fromARGB(255, 226, 136, 166)
                                : Color.fromARGB(255, 250, 248, 248),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 9,
                          height: 9,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: !isDarkMode
                                ? Color.fromARGB(255, 226, 136, 166)
                                : Color.fromARGB(255, 250, 248, 248),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 50,
                          height: 2,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: !isDarkMode
                                ? Color.fromARGB(255, 226, 136, 166)
                                : Color.fromARGB(255, 250, 248, 248),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Container buildDot(
      {required double width, required double height, required Color color}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: width,
      height: height,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: color,
      ),
    );
  }
}
