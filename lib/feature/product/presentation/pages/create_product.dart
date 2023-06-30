import 'dart:io';

import 'package:abersoft_test/core/presentation/mixins/failure_message_handler.dart';
import 'package:abersoft_test/core/presentation/widget/button.dart';
import 'package:abersoft_test/core/presentation/widget/formfield.dart';
import 'package:abersoft_test/core/utils/colors.dart';
import 'package:abersoft_test/feature/product/presentation/blocs/product_bloc/product_bloc.dart';
import 'package:abersoft_test/feature/product/presentation/blocs/product_bloc/product_event.dart';
import 'package:abersoft_test/feature/product/presentation/blocs/product_bloc/product_state.dart';
import 'package:abersoft_test/feature/product/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateProductPage extends StatelessWidget with FailureMessageHandler {
  CreateProductPage({super.key});

  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create Product',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      context.read<ProductBloc>().add(
                            const ProductEvent.imagePressed(),
                          );
                    },
                    child: BlocBuilder<ProductBloc, ProductState>(
                      builder: (context, state) {
                        return Container(
                          width: 268,
                          height: 156,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: (state.image == null)
                              ? const Icon(
                                  Icons.camera_alt_outlined,
                                  size: 70,
                                  color: Colors.white,
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.file(
                                    File(state.image!.path),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: productNameController,
                        hintext: 'Product Name',
                      ),
                      const SizedBox(height: 16),
                      CustomTextFormField(
                        maxLines: 6,
                        controller: productDescController,
                        hintext: 'Product Description',
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      BlocConsumer<ProductBloc, ProductState>(
                        listener: (context, state) {
                          state.createProductOrFailureOption.fold(
                            () => null,
                            (either) => either.fold(
                              (l) => handleFailure(context, l),
                              (r) => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const HomePage();
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        builder: (context, state) {
                          if (state.status == Status.loading) {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: AppColor.primary,
                              ),
                            );
                          } else {
                            return CustomButton(
                              'Upload',
                              color: AppColor.primary,
                              onPressed: () async {
                                context.read<ProductBloc>().add(
                                      ProductEvent.createProduct(
                                        productNameController.text,
                                        productDescController.text,
                                        state.image!.path,
                                      ),
                                    );
                              },
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
