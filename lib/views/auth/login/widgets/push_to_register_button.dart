import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:template_app_bloc/blocs/theme/theme_bloc.dart';
import 'package:template_app_bloc/blocs/theme/theme_state.dart';
import 'package:template_app_bloc/constants/color_constants.dart';
import 'package:template_app_bloc/generated/locale_keys.g.dart';
import 'package:template_app_bloc/routes/routes.dart';

class PushToRegisterButton extends StatelessWidget {
  const PushToRegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            context.push(Routes.REGISTER);
          },
          child: Text(
            LocaleKeys.register,
            style: TextStyle(
              color: themeState.isDark ? ColorConstants.darkPrimaryIcon : ColorConstants.lightPrimaryIcon,
            ),
          ).tr(),
        );
      },
    );
  }
}
