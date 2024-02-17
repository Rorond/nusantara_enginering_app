import 'package:landing_page/core.dart';
import 'package:landing_page/module/product/widget/product_title.dart';

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
            // padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: ProductTitle()),
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
