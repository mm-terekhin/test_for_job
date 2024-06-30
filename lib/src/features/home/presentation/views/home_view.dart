import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../app/app.dart';
import '../../home.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFF212529),
      appBar: AppBar(
        backgroundColor: const Color(0xFF212529),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AssetsNames.settingsIcon,
                width: DeviseCheckInherited.of(context).isTablet ? 24 : 24,
                height: DeviseCheckInherited.of(context).isTablet ? 24 : 24,
              ),
            ),
            Text(
              'Рабочие пространства',
              style: theme.textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontSize: DeviseCheckInherited.of(context).isTablet ? 24 : 20,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: DeviseCheckInherited.of(context).isTablet ? 24 : 16,
        ),
        child: const CustomScrollView(
          slivers: [
            SearchAppBar(),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            WorkspacesList(),
          ],
        ),
      ),
    );
  }
}
