import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosplus/components/custom/hplus_appbar.dart';
import 'package:hosplus/components/custom/search_box.dart';
import 'package:hosplus/components/custom/specialist_card.dart';
import 'package:hosplus/components/custom/topdoctors_tile.dart';

// the search screen contains numerous navigations from popular doctors to popluar specialist.
// each of these are clickable and will navigate to another page where you make book or serach for the doctorrs as per necessacity.

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchText = TextEditingController();

  @override
  void dispose() {
    searchText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        HosplusAppBar(
          expandedHeight: 140,
          collapsedHeight: 100,
          nonCollapseableElement: SearchBox(
            textController: searchText,
            hintText: 'Search "Cardiac"',
            prefixIcon: const Icon(Icons.search),
            suffixIcon: const Icon(Icons.mic),
          ),
          backgroundCollapsable: Container(
            decoration: const BoxDecoration(color: Colors.amber),
            child: SafeArea(
              minimum: const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.location_on,
                            size: 40,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Home",
                                    style: GoogleFonts.rubik().copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                              Text(
                                "4/143 Anantha Iyengar street, NGGO Colony, Coimabtore",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.rubik(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.g_translate,
                        size: 30,
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Text(
              "Popular Specialist",
              style: TextStyle(fontSize: 25),
            ),
          ),
          AspectRatio(
            aspectRatio: width > 400 ? 1.6 : 1.4,
            child: GridView(
              padding: const EdgeInsets.all(0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 1.3),
              controller: PrimaryScrollController.of(context),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: const [
                SpecialistCard(
                  imageUrl:
                      "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                  name: "Dr.Blala Blalal",
                  spealist: "Cardiac Spealist",
                  rating: "4.9 (7k)",
                ),
                SpecialistCard(
                  imageUrl:
                      "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                  name: "Dr.Blala Blalal",
                  spealist: "Cardiac Spealist",
                  rating: "4.9 (7k)",
                ),
                SpecialistCard(
                  imageUrl:
                      "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                  name: "Dr.Blala Blalal",
                  spealist: "Cardiac Spealist",
                  rating: "4.9 (7k)",
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "Top Doctors",
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListView(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            controller: PrimaryScrollController.of(context),
            children: const [
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
              TopdoctorsTile(
                imageUrl:
                    "https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp",
                name: "Dr. Amanda White",
                spealist: "Cardiogolist",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
