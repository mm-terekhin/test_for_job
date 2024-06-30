import 'package:flutter/material.dart';

import '../../home.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      toolbarHeight: 0,
      backgroundColor: const Color(0xFF212529),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(
                4,
              ),
            ),
          ),
          child: const TextField(
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              hintText: 'Поиск',
              hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
              iconColor: Colors.grey,
              filled: true,
              fillColor: Color(0xFF212529),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    4,
                  ),
                ),
              ),
              icon: Icon(
                Icons.search,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
