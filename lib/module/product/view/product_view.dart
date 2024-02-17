import 'package:landing_page/core.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductTitle(),
                  ProductListItem(),
                  FooterView(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
