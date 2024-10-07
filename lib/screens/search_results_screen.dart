import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosplus/components/custom/hplus_appbar.dart';
import 'package:hosplus/components/custom/search_box.dart';
import 'package:hosplus/components/custom/search_result_card.dart';

class SearchResultsScreen extends StatefulWidget {
  const SearchResultsScreen({super.key});

  @override
  State<SearchResultsScreen> createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  final TextEditingController searchText = TextEditingController();

  @override
  void dispose() {
    searchText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        HosplusAppBar(
          expandedHeight: 100,
          collapsedHeight: 100,
          nonCollapseableElement: SearchBox(
            textController: searchText,
            hintText: 'Search "Cardiac"',
            prefixIcon: const Icon(Icons.search),
            suffixIcon: const Icon(Icons.mic),
          ),
          backgroundCollapsable: Container(
            decoration: const BoxDecoration(color: Colors.transparent),
            // child: SafeArea(
            //   minimum: const EdgeInsets.all(5),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Expanded(
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             const Padding(
            //               padding: EdgeInsets.all(5.0),
            //               child: Icon(
            //                 Icons.location_on,
            //                 size: 40,
            //               ),
            //             ),
            //             Expanded(
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.start,
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Text(
            //                         "Home",
            //                         style: GoogleFonts.rubik().copyWith(
            //                             fontSize: 20,
            //                             fontWeight: FontWeight.bold),
            //                       ),
            //                       const Icon(Icons.keyboard_arrow_down),
            //                     ],
            //                   ),
            //                   Text(
            //                     "4/143 Anantha Iyengar street, NGGO Colony, Coimabtore",
            //                     overflow: TextOverflow.ellipsis,
            //                     style: GoogleFonts.rubik(),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       IconButton(
            //           onPressed: () {},
            //           icon: const Icon(
            //             Icons.g_translate,
            //             size: 30,
            //           ))
            //     ],
            //   ),
            // ),
          ),
        ),
      ],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("116 Doctors found in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary)),
                    Text(
                      "General Physician",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.sort,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ListView(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              controller: PrimaryScrollController.of(context),
              children: const [
                SearchResultCard(
                    name: "Rocky Rock",
                    specialisation: "Cardiologist",
                    docImageSrc:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                    available: true,
                    fees: "123",
                    btnText: "Book Appointment",
                    btnColor: Color.fromARGB(255, 74, 131, 88)),
                SearchResultCard(
                    name: "Rocky Rock",
                    specialisation: "Cardiologist",
                    docImageSrc:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                    available: true,
                    fees: "123",
                    btnText: "Book Appointment",
                    btnColor: Color.fromARGB(255, 74, 131, 88)),
                SearchResultCard(
                    name: "Rocky Rock",
                    specialisation: "Cardiologist",
                    docImageSrc:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                    available: true,
                    fees: "123",
                    btnText: "Book Appointment",
                    btnColor: Color.fromARGB(255, 74, 131, 88)),
                SearchResultCard(
                    name: "Rocky Rock",
                    specialisation: "Cardiologist",
                    docImageSrc:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                    available: true,
                    fees: "123",
                    btnText: "Book Appointment",
                    btnColor: Color.fromARGB(255, 74, 131, 88)),
                SearchResultCard(
                    name: "Rocky Rock",
                    specialisation: "Cardiologist",
                    docImageSrc:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                    available: true,
                    fees: "123",
                    btnText: "Book Appointment",
                    btnColor: Color.fromARGB(255, 74, 131, 88)),
                SearchResultCard(
                    name: "Rocky Rock",
                    specialisation: "Cardiologist",
                    docImageSrc:
                        "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                    available: true,
                    fees: "123",
                    btnText: "Book Appointment",
                    btnColor: Color.fromARGB(255, 74, 131, 88)),
              ],
            ),
            // const SearchResultCard(
            //     name: "Rocky Rock",
            //     specialisation: "Cardiologist",
            //     docImageSrc:
            //         "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
            //     available: true,
            //     fees: "123",
            //     btnText: "Book Appointment",
            //     btnColor: Color.fromARGB(255, 74, 131, 88)),
          ],
        ),
      ),
    );
  }
}
