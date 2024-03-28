import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/page_cubit.dart';
import '../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String text;
  final IconData icon;

  const CustomBottomNavigationItem({
    Key? key,
    required this.index,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Icon(
            icon,
            color: context.read<PageCubit>().state == index
                ? cPrimaryColor
                : cGreyColor,
          ),
          // Image.asset(
          //   imageUrl,
          //   width: 24,
          //   height: 24,
          //   color: context.read<PageCubit>().state == index
          //       ? kPrimaryColor
          //       : kGreyColor,
          // ),
          Text(
            text,
            softWrap: true,
            maxLines: 1,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? cPrimaryColor
                  : cTransparentColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
