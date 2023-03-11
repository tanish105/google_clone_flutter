import 'package:flutter/material.dart';
import 'package:google_clone/widgets/web/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          SearchTab(
            isActive: true,
            text: 'All',
            icon: Icons.search,
          ),
          SizedBox(width: 20,),
          SearchTab(
            // isActive: true,
            text: 'Images',
            icon: Icons.image,
          ),
          SizedBox(width: 20,),
          SearchTab(
            // isActive: true,
            text: 'Maps',
            icon: Icons.map,
          ),
          SizedBox(width: 20,),
          SearchTab(
            // isActive: true,
            text: 'News',
            icon: Icons.article,
          ),
          SizedBox(width: 20,),
          SearchTab(
            // isActive: true,
            text: 'Shopping',
            icon: Icons.shop,
          ),
          SizedBox(width: 20,),
          SearchTab(
            // isActive: true,
            text: 'More',
            icon: Icons.more_vert,
          ),
          SizedBox(width: 20,),
        ],
      ),
    );
  }
}
