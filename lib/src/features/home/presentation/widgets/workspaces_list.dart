import 'package:flutter/material.dart';
import 'package:test_for_job/src/shared/domain/domain.dart';

import '../../home.dart';

class WorkspacesList extends StatelessWidget {
  const WorkspacesList({super.key});


  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: Workspaces.values.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        childAspectRatio: 2,
      ),
      itemBuilder: (context, index) {
        final value = Workspaces.values[index];
        return _Workspace(
          value: value,
        );
      },
    );
  }
}

class _Workspace extends StatelessWidget {
  const _Workspace({
    super.key,
    required this.value,
  });

  final Workspaces value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      //height: 200,
      decoration: BoxDecoration(
        color: value.toColor(),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Stack(
        children: [
           Positioned(
            top: 0,
            right: 0,
            child: Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: DeviseCheckInherited.of(context).isTablet ? 40 : 24,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Text(
              value.toText(),
              style:  TextStyle(
                fontSize: DeviseCheckInherited.of(context).isTablet ? 24 : 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
