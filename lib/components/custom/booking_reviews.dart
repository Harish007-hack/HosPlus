import 'package:flutter/material.dart';
import 'package:hosplus/components/custom/cusstomer_review.dart';
import 'package:hosplus/components/custom/rating_summary.dart';

class BookingReviews extends StatelessWidget {
  const BookingReviews({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What patients are saying",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.star),
                            Text(
                              "500 Reviews",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    // TextButton(onPressed: onPressed, child: child)
                    ElevatedButton(
                        onPressed: () {}, child: const Text("+ Add Review")),
                  ],
                ),
              ),
              const RatingSummary(),
              Expanded(
                child: ListView(children: const [
                  CustomerReview(
                    imageUrl:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                    name: "Alan Walker",
                    date: "Feb 02, 2024",
                    rating: "4.8",
                    finalReview:
                        "qwaesrtnjmokfswaesrdgbnmlkjusagguihdifhwiufhihciahpHCPOdcoODVViwdhviDHVivhiudhvidvidhihiaocjiacihcicnaichucuhndkcnivhiudhcicjvokdbcidhccnhcd9vuojciuuhcocnkdc9djoidjjdjjjjjjjjjjjjjjjjjjjjjjjjdjddddddddddddddddddduudisocjaoch9PCDOvpoiED9OED",
                  ),
                  CustomerReview(
                    imageUrl:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                    name: "Alan Walker",
                    date: "Feb 02, 2024",
                    rating: "4.8",
                    finalReview:
                        "qwaesrtnjmokfswaesrdgbnmlkjusagguihdifhwiufhihciahpHCPOdcoODVViwdhviDHVivhiudhvidvidhihiaocjiacihcicnaichucuhndkcnivhiudhcicjvokdbcidhccnhcd9vuojciuuhcocnkdc9djoidjjdjjjjjjjjjjjjjjjjjjjjjjjjdjddddddddddddddddddduudisocjaoch9PCDOvpoiED9OED",
                  ),
                  CustomerReview(
                    imageUrl:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                    name: "Alan Walker",
                    date: "Feb 02, 2024",
                    rating: "4.8",
                    finalReview:
                        "qwaesrtnjmokfswaesrdgbnmlkjusagguihdifhwiufhihciahpHCPOdcoODVViwdhviDHVivhiudhvidvidhihiaocjiacihcicnaichucuhndkcnivhiudhcicjvokdbcidhccnhcd9vuojciuuhcocnkdc9djoidjjdjjjjjjjjjjjjjjjjjjjjjjjjdjddddddddddddddddddduudisocjaoch9PCDOvpoiED9OED",
                  ),
                  // Expanded(
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Row(
                  //             children: [
                  //               CircleAvatar(
                  //                 backgroundImage: NetworkImage(
                  //                     "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp"),
                  //               ),
                  //               Column(
                  //                 children: [
                  //                   Text(
                  //                     "Alan Walker",
                  //                     style: TextStyle(fontWeight: FontWeight.bold),
                  //                   ),
                  //                   Text(
                  //                     "Feb 02, 2024",
                  //                     style: TextStyle(
                  //                         color: Theme.of(context)
                  //                             .colorScheme
                  //                             .primary),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //           Row(
                  //             children: [
                  //               Icon(
                  //                 Icons.star,
                  //                 size: 15,
                  //               ),
                  //               Text("4.6"),
                  //             ],
                  //           ),
                  //         ],
                  //       ),
                  //       const SizedBox(
                  //         height: 10,
                  //       ),
                  //       Text(
                  //         "qwaesrtnjmokfswaesrdgbnmlkjusagguihdifhwiufhihciahpHCPOdcoODVViwdhviDHVivhiudhvidvidhihiaocjiacihcicnaichucuhndkcnivhiudhcicjvokdbcidhccnhcd9vuojciuuhcocnkdc9djoidjjdjjjjjjjjjjjjjjjjjjjjjjjjdjddddddddddddddddddduudisocjaoch9PCDOvpoiED9OED",
                  //         style: TextStyle(
                  //             color:
                  //                 Theme.of(context).colorScheme.primaryContainer),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // const ListTile(
                  //   leading: CircleAvatar(
                  //     backgroundImage: NetworkImage(
                  //         "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp"),
                  //   ),
                  //   title: Text("Alan Walker"),
                  //   subtitle: Text("Feb 02, 2024"),
                  //   trailing: Row(
                  //     children: [
                  //       Icon(Icons.star),
                  //       Text("4.6"),
                  //     ],
                  //   ),
                  // ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
