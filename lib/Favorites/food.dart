import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:midterm_project_3rdyear_1stsem/Favorites/difFoods.dart';
import 'package:midterm_project_3rdyear_1stsem/helper/utils.dart';
import 'package:midterm_project_3rdyear_1stsem/Favorites/categories.dart';

class faves extends StatefulWidget {
  const faves({Key? key}) : super(key: key);

  @override
  State<faves> createState() => _favesState();
}

class _favesState extends State<faves> {
/*  foods*/
  List<bool> selection = [true, false];
  int index = 0;
  int indexR = 0;
  static List<String> foodName = [
    "Cookie",
    "Cakes",
    "Hotdog",
    "Donuts",
    "Burger",
    "Pizza",
    "Fries"
  ];
  static List<String> altName = [
    "Biscuit",
    "Tart",
    "Sausage",
    " Doughnut",
    "Deutsches Beefsteak",
    "Flatbread",
    "Chips",
  ];
  static List<String> foodDes = [
    "A cookie is a baked or cooked food that is typically small,flat and sweet. It usually contains flour,egg and some type of oil,fat,or butter.It may include other ingredients such as raisins,oats, chocolate chips,nuts and etc.\n\t\nIn most English-speaking countries except for the United States, crunchy cookies are called biscuits. Many Canadians also use this term. Chewier biscuits are sometimes called cookies even in the United Kingdom.[3] Some cookies may also be named by their shape, such as date squares or bars.",
    "A cake an item of soft, sweet food made from a mixture of flour, shortening, eggs, sugar, and other ingredients, baked and often decorated.\n\t\nA cake is “a sweet, baked, breadlike food, made with or without shortening, and usually containing flour, sugar, baking powder or soda, eggs, and liquid flavoring.” It can be as thin and flat as a plate or as fluffy as a cloud.",
    "A hotdog is a frankfurter, especially one served hot in a long, soft roll and topped with various condiments.\n\t\nA hot dog is a dish consisting of a grilled or steamed sausage served in the slit of a partially sliced bun. The term hot dog can also refer to the sausage itself. The sausage used is a wiener or a frankfurter. The names of these sausages also commonly refer to their assembled dish",
    "A donut is a small fried cake of sweetened dough, typically in the shape of a ball or ring.\n\t\nA doughnut or donut is a type of leavened fried dough. It is popular in many countries and is prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendors.",
    "A burger is a dish consisting of a round patty of ground beef, or sometimes another savory ingredient, that is fried or grilled and typically served in a split bun or roll with various condiments and toppings.\n\t\n A hamburger is a food, typically considered a sandwich, consisting of one or more cooked patties—usually ground meat, typically beef—placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.",
    "A pizza is a dish of Italian origin consisting of a flat, round base of dough baked with a topping of tomato sauce and cheese, typically with added meat or vegetables.\n\t\n Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven. A small pizza is sometimes called a pizzetta.",
    "A French fries is a thin strip of deep-fried potato.\n\t\nFrench fries, chips, finger chips, French-fried potatoes, or simply fries are batonnet or allumette-cut deep-fried potatoes, originating from either Belgium or France. They are prepared by cutting the potato into even strips, then drying and frying it, usually in a deep fryer."
  ];
  static List img1 = [
    'https://images.unsplash.com/photo-1598839950984-034f6dc7b495?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1598839950984-034f6dc7b495?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1598839950984-034f6dc7b495?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1598839950984-034f6dc7b495?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1598839950984-034f6dc7b495?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1598839950984-034f6dc7b495?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1598839950984-034f6dc7b495?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ];
  static List img2 = [
    "https://images.unsplash.com/photo-1590080874088-eec64895b423?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1590080874088-eec64895b423?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1590080874088-eec64895b423?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1590080874088-eec64895b423?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1590080874088-eec64895b423?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1590080874088-eec64895b423?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1590080874088-eec64895b423?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  ];

  static List url = [
    'https://ouch-cdn2.icons8.com/Z8pwxDhDDpx1rktaaFOdsN1wpCnRTtcCSp4TSv1DJ-g/rs:fit:196:180/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMTA4/Lzg4NzI1M2JlLWFj/ZTMtNDQ2OC1iYmFm/LTRhZjM5ZGIwMGQ5/NS5zdmc.png',
    'https://ouch-cdn2.icons8.com/ZqFNOQjZjbgATkQmA0DlkxT5RGTvFDeVRs2OL2nStKA/rs:fit:196:256/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMjE4/L2FmNjBjYTk2LWVi/MmQtNDY5MS1hZmE1/LTdjY2VjOTQ5NDFk/MS5zdmc.png',
    'https://ouch-cdn2.icons8.com/Ir8fhHPcul_31V5flvlNH1Rj-h3I0btMIstEqzSM1hU/rs:fit:196:91/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMzQ1/Lzk0ZjcwMGQ3LTA2/MWUtNGQ1Yi04YWY0/LTY1NzQzYzJhNGQ5/MS5zdmc.png',
    'https://ouch-cdn2.icons8.com/cLDuOQ72oUosXMir_NdzITIa0Uwiyfi0bGpMjqfnI6Y/rs:fit:196:196/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNTUw/L2Q3ZjRiNjI3LTlh/N2ItNDQxZC04NmNh/LTY5MDBkYTRjODQ4/NS5zdmc.png',
    'https://ouch-cdn2.icons8.com/X9Fa0n9s-Q_PP5tzzfCaBeS7NIwpMArR2NivEH0lQyc/rs:fit:196:152/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNDQw/LzRmMjZmMGFkLTMw/OTgtNGI2OS04NGRh/LWQ4ZWI1ZjVkZDI5/Zi5zdmc.png',
    'https://ouch-cdn2.icons8.com/i7M6TSCHKqcFP3fCY7kqFhgzcVDEaq9k7XJOdSs9T9U/rs:fit:196:260/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMjU5/L2Q2MDZmMTc2LTQy/ZjEtNDVlNC05MDc1/LTUxNTE1YjVmNjcz/Ni5zdmc.png',
    'https://ouch-cdn2.icons8.com/ZZs2zwFfbDHEQZxU7pDoEZuY6Xf8Fx9kBwf5VJqgpyY/rs:fit:196:262/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNDY2/L2MzMzFjMTIxLWRk/YTctNDJlNy04MGE1/LTc0ZTFhN2U5MjM1/OC5zdmc.png'
  ];
  final List<foods> foodData = List.generate(
      foodName.length,
      (index) => foods(foodName[index], '${url[index]}', altName[index],
          foodDes[index], img1[index], img2[index]));

  /*recipes*/
  List<category> categories = utils.getMockCategory();
  static List<String> mins = [
    "55",
    "25",
    "45",
    "25",
    "15",
  ];
  static List<String> serve = [
    "3",
    "1",
    "5",
    "2",
    "1",
  ];
  static List<String> recipesDes = [
    "Grilled Fish Steak is a delicious Mediterranean recipe made by marinating fish fillets in garlic, green chilles and a blend of spices. Tender fish fillets smeared in a simple marinade of time juice and salt, seared golden.Delicous isn't it?",
    "This one pan lamb dinner is a complete dinner packed with vegetables, so you can serve it as it on its own. But when serving this for a crowd, I like to complement it with extra sides. My favourites to serve with this are creamy mashed potatoes or garlic mashed cauliflower, hasselback potatoes, and sautéed garlic mushrooms.",
    "These melt in your mouth kebabs are definitely a great dinner party option. Minced lamb or mutton grilled with a range of Indian seasoning and flavours. It derived its name from the city of Kakori on the outskirts of Lucknow. It is a very well-known Lucknow cuisine",
    "Drumsticks have fatty flavors and a delicious firm dark meat that is great for frying. This basic fried chicken recipe soaks drumsticks in buttermilk, then dredges them in seasoned flour. They're pan-fried to perfection in batches, resulting in chicken that's moist inside and wonderfully crispy on the outside.",
    "This vegetable stir-fry is a hearty and nutritious dish that’s packed with good-for-you vitamins and minerals you’ll love serving the whole family. It’s delicious enjoyed on its own or served as a complete meal with steamed rice.",
  ];

  List<String> descR = [
    "Boneless with stakes with crispy fried sauce and toppings",
    "Deeply fried lamb meat with choco dips and fresh vegetables",
    "Crunchy mutton kebabs with chilli toppings and sauce",
    "Crispy chicken leg pieces with side veggies and sauce",
    "Crunchy deep fried meat mixed with fruits and vegetables"
  ];
  static String step1="To prepare this amazing non-vegetarian recipe, take the fish fillets and massage it gently with oil, keep in a plate";
  static String step2="Grind together the garlic, turmeric powder,green chillies, dili leaves, corriander powder, and salt.Add oil to it and grind to form a paste. Rub this all over the fish fillets and keep aside to marinate for 15 to 30 minutes";
  static String step3="Grill the marinated fish on a preheated grill or oven till golden and crisp on both sides for 5 minutes. Transfer to plate";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Favorites",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            bottom: TabBar(
                indicatorColor: Colors.green,
                labelColor: Colors.white,
                labelPadding: EdgeInsets.symmetric(vertical: 9),
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  color: Colors.green.withOpacity(.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                tabs: const [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Foods",
                        style: TextStyle(fontSize: 25),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Recipes",
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ]),
          ),
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildFood(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buildRecipes(),
            ),
          ]),
        ));
  }

  Widget buildFood() => ListView.builder(
      itemCount: foodName.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Image.network(foodData[index].ImageUrl),
            ),
            title: Text(foodData[index].name),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(
                        title: const Text(
                          "Foods",
                          style: TextStyle(color: Colors.black),
                        ),
                        elevation: 0.0,
                        centerTitle: true,
                        backgroundColor: Colors.white,
                        iconTheme: const IconThemeData(color: Colors.black),
                      ),
                      body: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: ListTile(
                                    leading: Image.network(
                                      foodData[index].ImageUrl,
                                    ),
                                    title: Text(foodData[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30)),
                                    subtitle: Text(
                                      "Alternative Names:" +
                                          foodData[index].altName,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                              Text(foodData[index].foodDes,
                                  style: TextStyle(fontSize: 20)),

                              Row(
                                children: [
                                  Text(
                                    "\nGallery",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,5,5,100),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 190,
                                      height: 200,
                                      child: Image.network('https://images.unsplash.com/photo-1559622214-f8a9850965bb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y29va2llc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    Container(
                                      width: 190,
                                      height: 200,
                                      child: Image.network('https://images.unsplash.com/photo-1598839950984-034f6dc7b495?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y29va2llc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                                        fit: BoxFit.fitWidth,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      floatingActionButton: FloatingActionButton.extended(
                        label: Text("Add to favorite",
                            style: TextStyle(fontSize: 25)),
                        isExtended: true,
                        onPressed: () {
                          print(foodData[index].name + " added to Favorites");
                        },
                       backgroundColor: Colors.pinkAccent,
                      ),
                      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                    ),
                  ));
            },
          ),
        );
      });

  Widget buildRecipes() => Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (BuildContext context, indexR) {
                  return Column(children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        height: 150,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  'images/' +
                                      categories[indexR].imgName +
                                      '.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: 10,
                                top: 10,
                                child: Row(
                                  children: [
                                    Container(
                                      child: categories[indexR].icon,
                                    ),
                                  ],
                                )),
                          ],
                        )),
                    Card(
                        child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 10, 0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.watch_later_outlined),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(mins[indexR] + " min"),
                                          ),
                                          Icon(Icons.people_outline),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child:
                                                Text(serve[indexR] + " serve"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          40, 0, 0, 0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.pinkAccent,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.pinkAccent,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.pinkAccent,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.pinkAccent,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.pinkAccent,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  categories[indexR].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            subtitle: Text(descR[indexR],
                                style: TextStyle(fontSize: 15)),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Scaffold(
                                            appBar: AppBar(
                                              title: const Text(
                                                "Recipes",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              elevation: 0.0,
                                              centerTitle: true,
                                              backgroundColor: Colors.white,
                                              iconTheme: const IconThemeData(
                                                  color: Colors.black),
                                            ),
                                            body: SingleChildScrollView(
                                              child: Container(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: Image.asset(
                                                        'images/' +
                                                            categories[indexR]
                                                                .imgName +
                                                            '.jpg',
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 0, 10, 0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 20, 0, 0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(Icons
                                                                .watch_later_outlined),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Text(
                                                                  mins[indexR] +
                                                                      " min",style: TextStyle(fontSize: 18),),
                                                            ),
                                                            Icon(Icons
                                                                .people_outline),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Text(serve[
                                                                      indexR] +
                                                                  " serve",style: TextStyle(fontSize: 18),),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      40,
                                                                      0,
                                                                      0,
                                                                      0),
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Icon(
                                                                    Icons.star,
                                                                    color: Colors
                                                                        .pinkAccent,
                                                                  ),
                                                                  Icon(
                                                                    Icons.star,
                                                                    color: Colors
                                                                        .pinkAccent,
                                                                  ),
                                                                  Icon(
                                                                    Icons.star,
                                                                    color: Colors
                                                                        .pinkAccent,
                                                                  ),
                                                                  Icon(
                                                                    Icons.star,
                                                                    color: Colors
                                                                        .pinkAccent,
                                                                  ),
                                                                  Icon(
                                                                    Icons.star,
                                                                    color: Colors
                                                                        .pinkAccent,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          categories[indexR]
                                                              .name,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 25),
                                                        ),
                                                        Container(
                                                            child: categories[
                                                                    indexR]
                                                                .icon),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        children: [
                                                          Text(
                                                            recipesDes[indexR],
                                                            style: TextStyle(
                                                                fontSize: 20),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "\n Ingredients",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 30),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Container(
                                                                height: 75,
                                                                width: 75,
                                                                child:Image.network('https://media.istockphoto.com/photos/raw-salmon-fillet-picture-id148284125?b=1&k=20&m=148284125&s=170667a&w=0&h=_rP2nc_T0bwxZ20XF_6p_-DoWBmjXplCC_pMju-qjjw='),
                                                              ),
                                                              Container(
                                                                height: 75,
                                                                width: 75,
                                                                child:Image.network('https://media.istockphoto.com/photos/lemon-picture-id92280727?b=1&k=20&m=92280727&s=170667a&w=0&h=vc00OHrrcoLoVwue9cO4fTxyNg22KQn9DhoYp3ro0W4='),
                                                              ),
                                                              Container(
                                                                height: 75,
                                                                width: 75,
                                                                child:Image.network('https://media.istockphoto.com/photos/green-cabbage-isolated-on-white-picture-id673162168?b=1&k=20&m=673162168&s=170667a&w=0&h=vSSR6BIrOmH3g_PuqCcvrESXVfpc1J2JGgiGriaSBP4='),
                                                              ),
                                                              Container(
                                                                height: 75,
                                                                width: 75,
                                                                child:Image.network('https://media.istockphoto.com/photos/red-bell-pepper-dices-on-white-background-picture-id1141246544?b=1&k=20&m=1141246544&s=170667a&w=0&h=40THH8tuypCvMIXuH8sAwkEYO0dmIVkGJlAMwWB8PMM='),
                                                              ),
                                                              Container(
                                                                height: 75,
                                                                width: 75,
                                                                child:Image.network('https://media.istockphoto.com/photos/garlic-picture-id499147864?b=1&k=20&m=499147864&s=170667a&w=0&h=zO6mklPeVI_rdj1EypSvWhZCOOHlSXVZV3Xody_7K6I='),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "\n Directions",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 30),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "\n Step 1",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 30),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(step1,style: TextStyle(fontSize: 20),)
                                                          ,
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "\n Step 2",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 30),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(step2,style: TextStyle(fontSize: 20)),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "\n Step 3",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 30),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(step3,style: TextStyle(fontSize: 20)),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 20, 0, 40),
                                                      child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          fixedSize: const Size(
                                                              290, 50),
                                                          side: BorderSide(
                                                              width: 100,
                                                              color:
                                                                  Colors.white),
                                                          primary:
                                                              Colors.pinkAccent,
                                                        ),
                                                        child: Text(
                                                            "Add to favorite",
                                                            style: TextStyle(
                                                                fontSize: 25)),
                                                        onPressed: () {
                                                          print(categories[
                                                                      indexR]
                                                                  .name +
                                                              " added to Favorites");
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )));
                            }))
                  ]);
                }),
          ),
        ],
      );
}
