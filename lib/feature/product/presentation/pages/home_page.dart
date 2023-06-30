import 'package:abersoft_test/core/extensions/context_extensions.dart';
import 'package:abersoft_test/feature/product/presentation/pages/create_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:abersoft_test/core/presentation/widget/popup.dart';
import 'package:abersoft_test/feature/login/presentation/pages/login_page.dart';
import 'package:abersoft_test/feature/login/presentation/widgets/popup_dialog.dart';
import 'package:abersoft_test/feature/product/presentation/blocs/product_bloc/product_bloc.dart';
import 'package:abersoft_test/feature/product/presentation/blocs/product_bloc/product_event.dart';
import 'package:abersoft_test/feature/product/presentation/blocs/product_bloc/product_state.dart';
import 'package:abersoft_test/feature/product/presentation/widgets/product_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<ProductBloc>().add(const ProductEvent.loadProducts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Our Portfolio',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CreateProductPage();
                          },
                        ),
                      ),
                      child: const Icon(Icons.create),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Best Product',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return Container(
                      height: context.media.size.height * 0.2,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.products.bestProduct.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              SizedBox(
                                width: (index == 0) ? 0 : 16,
                              ),
                              ProductItemWidget(
                                product: state.products.bestProduct[index],
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'All Product',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    return Container(
                      height: context.media.size.height * 0.6,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: state.products.allProduct.length,
                        itemBuilder: (BuildContext context, int index) {
                          // Your itemBuilder logic here
                          return ProductItemWidget(
                              product: state.products.allProduct[index]);
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
