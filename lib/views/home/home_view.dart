import 'package:flutter/cupertino.dart';
import 'package:template_app_bloc/constants/color_constants.dart';
import 'package:template_app_bloc/generated/locale_keys.g.dart';
import 'package:template_app_bloc/helpers/ui_helper.dart';
import 'package:template_app_bloc/widgets/custom_scaffold.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      onRefresh: () async {
        await Future<void>.delayed(const Duration(milliseconds: 1000));
        setState(() {});
      },
      title: LocaleKeys.home,
      children: List.generate(
        7,
        (index) => Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: UIHelper.deviceWidth,
          height: 150,
          decoration: BoxDecoration(
            color: ColorConstants.lightBackgroundColorActivated,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}
