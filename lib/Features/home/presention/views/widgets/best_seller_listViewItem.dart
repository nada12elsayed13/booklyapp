// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booklyapp/Features/home/presention/views/widgets/customItem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presention/views/widgets/book_rate.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/router_app.dart';
import 'package:booklyapp/core/utils/style.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    Key? key,
    this.bookModel
  }) : super(key: key);
  final BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouteApp.kBookDetailView);
      },
      child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomListViewItem(imagUrl:bookModel!.volumeInfo!.imageLinks.thumbnail,),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel!.volumeInfo!.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textstyle20
                            .copyWith(fontFamily: KGTSectraFine),
                      ),
                    ),
                    const SizedBox(height: 3),
                      Text(
                      bookModel!.volumeInfo!.authors![0],
                      style: Styles.textstyle14,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          r'Free',
                          style: Styles.textstyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        BookRate(rate: bookModel!.volumeInfo!.averageRating??0,
                                  count:bookModel!.volumeInfo!.ratingsCount??0,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
