import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio_website/presentation/cubits/section_cubit.dart';

class NavLink extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Section section;

  const NavLink({
    super.key,
    required this.title,
    required this.onPressed,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SectionCubit, Section>(
      builder: (context, state) {
        late final Color textColor, buttonColor;

        if (state == section) {
          textColor = Theme.of(context).colorScheme.onPrimary;
          buttonColor = Theme.of(context).colorScheme.primary;
        } else {
          textColor = Theme.of(context).colorScheme.primary;
          buttonColor = Theme.of(context).colorScheme.onPrimary;
        }

        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(backgroundColor: buttonColor),
            child: Text(title, style: TextStyle(color: textColor)),
          ),
        );
      },
    );
  }
}
