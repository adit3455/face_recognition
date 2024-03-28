import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:socfindo_page_absensi/cubit/page_cubit.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class BottomNavigationWidget extends StatelessWidget {
  final int index;
  final String text;
  final IconData icon;
  final int currentIndex;

  const BottomNavigationWidget({
    Key? key,
    required this.index,
    required this.icon,
    required this.text,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Material(
        color: cWhiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Icon(
              icon,
              color: currentIndex == index ? cPrimaryColor : cGreyColor,
            ),
            Text(
              text,
              softWrap: true,
              maxLines: 1,
            ),
            Container(
              width: 30,
              height: 2,
              decoration: BoxDecoration(
                color:
                    currentIndex == index ? cPrimaryColor : cTransparentColor,
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
