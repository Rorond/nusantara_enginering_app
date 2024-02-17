// ignore_for_file: sort_child_properties_last

import 'package:landing_page/core.dart';

class MainNavigationView extends StatelessWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationController>(
      init: MainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          endDrawer: CustomDrawer(),
          appBar: AppBar(
            toolbarHeight: MediaQuery.of(context).size.width < 680 ? 55 : 80,
            titleSpacing: MediaQuery.of(context).size.width * 0.05,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: Colors.transparent,
            centerTitle: false,
            title: NavLogo(),
            elevation: 0,
            actions: [CustomMenu()],
          ),
          body: PageView(
            allowImplicitScrolling: true,
            scrollDirection: Axis.horizontal,
            controller: controller.pageController,
            onPageChanged: (value) {
              controller.onPageChange(value);
            },
            children: [
              HomeView(),
              AboutView(),
              ServiceView(),
              ProductView(),
              ClientView(),
            ],
          ),
        );
      },
    );
  }
}
