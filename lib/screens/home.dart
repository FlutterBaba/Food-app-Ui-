import 'package:flutter/material.dart';
import 'package:food_app_ui/Data/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackgroundColor,
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(),
        ),
        title: const Text("Hello, Daniel !"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: AppColors.kWhite,
              ),
              child: const Icon(
                Icons.notifications_active_rounded,
                color: AppColors.kpColor,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Search",
                      fillColor: const Color(0xfff4f6f9),
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topLeft,
                      colors: [
                        AppColors.kpColor,
                        AppColors.kplightColor,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset("images/burger.png"),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Special Deal for December",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.kYellow,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: const Text("Buy Now"),
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular Restaurent",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.kpColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: popularRestaurentllist
                        .map(
                          (e) => PopularContainer(
                            image: e.image,
                            time: e.time,
                            title: e.title,
                          ),
                        )
                        .toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Popular Menu",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.kpColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: popularMenuList
                        .map(
                          (e) => PopularMenu(
                            image: e.image,
                            price: e.price,
                            subTitle: e.subTitle,
                            title: e.title,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PopularMenu extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final int price;
  const PopularMenu({
    Key? key,
    required this.image,
    required this.price,
    required this.subTitle,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.kshadowColor.withOpacity(0.8),
            spreadRadius: 10,
            blurRadius: 20,
            offset: const Offset(0, 7), // changes position of shadow
          ),
        ],
      ),
      child: Card(
        child: ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          trailing: Text(
            "\$$price",
            style: const TextStyle(
              color: AppColors.kpColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            subTitle,
          ),
        ),
      ),
    );
  }
}

class PopularContainer extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  const PopularContainer({
    Key? key,
    required this.image,
    required this.time,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 140,
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.kshadowColor.withOpacity(0.8),
            spreadRadius: 10,
            blurRadius: 20,
            offset: const Offset(0, 7), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            scale: 6,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(time),
        ],
      ),
    );
  }
}
