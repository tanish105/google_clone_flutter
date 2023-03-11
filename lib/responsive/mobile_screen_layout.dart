import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/widgets/mobile/mobile_footer.dart';
import '../colors.dart';
import '../widgets/search.dart';
import '../widgets/translation_buttons.dart';
import '../widgets/web/search_buttons.dart';


class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          title: SizedBox(
            width: size.width*0.34,
            child: const DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(
                    text: 'ALL',
                  ),
                  Tab(
                    text: 'IMAGES',
                  ),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/more-apps.svg',
                color: primaryColor,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0)
                  .copyWith(right: 10.0),
              child: MaterialButton(
                onPressed: () {},
                color: const Color(0xff1A73EB),
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.25,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Search(),
                      ],
                    ),
                    const MobileFooter(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
