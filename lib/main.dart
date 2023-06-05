import 'dart:async';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("images/220px-ETHZ10.jpg")),
            SizedBox(height: 16),
            Text(
              "My Top Ten App",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("TopTen Computer Science University "),
      ),
      body: ListView(children: [
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                      title: "Tsinghua University",
                      description:
                          "Tsinghua University, located in northwest Beijing, "
                          "China, is a public institution that traces its roots back to 1911."
                          " The primary language of instruction is Chinese, though there are some"
                          " graduate degree programs offered in English. For instance, "
                          "the university has English-taught master's programs in Chinese politics,"
                          " foreign policy and international relations; mechanical engineering;"
                          " and global business journalism, among others. Tuition costs vary by degree program and language of instruction. "
                          "The university's international students hail from more than 100 countries, with the bulk of them coming from Asia. "
                          "In a recent year, 41 percent of the university's non-Chinese students were undergraduates,"
                          " 29 percent were pursuing master's degrees, 9 percent were doctoral students and the rest were participating "
                          "in shorter-term programs. Tsinghua University housing is available for both undergraduate and graduate students."),
                ),
              );
            },
            child: ListTile(
              leading: Image(image: AssetImage("images/download1.png")),
              title: Text("Tsinghua University"),
              subtitle: Text("First Number"),
            )),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                      title: "Stanford University",
                      description:
                          "Stanford was founded almost 150 years ago on a"
                          " bedrock of societal purpose. Our mission is to contribute to the world by"
                          " educating students for lives of leadership and purposeful contribution; advancing "
                          "fundamental knowledge and cultivating creativity; and accelerating solutions and amplifying"
                          " their impact Stanford provides students the opportunity to engage with big ideas,  to cross conceptual "
                          "and disciplinary boundaries, "
                          "and to become global citizens who embrace diversity of thought and experience."),
                ),
              );
            },
            child: ListTile(
              leading: Image(image: AssetImage("images/download2.png")),
              title: Text("Stanford University"),
              subtitle: Text("Second Number"),
            )),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                      title:
                          "California Institute of Technology - Hillel International.",
                      description: "The California "
                          "Institute of Technology"
                          " is a private research university in Pasadena, California. The university is"
                          " responsible for many modern scientific advancements and is among a small group of institutes of"
                          " technology in the United States which are strongly devoted to "
                          "the instruction of pure and applied sciences."),
                ),
              );
            },
            child: ListTile(
              leading: Image(image: AssetImage("images/download3.png")),
              title: Text(
                  "California Institute of Technology - Hillel International."),
              subtitle: Text("Third Number"),
            )),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                      title: "Harvard University",
                      description:
                          "Harvard University is a private Ivy League research university"
                          " in Cambridge, Massachusetts, United States. Founded in 1636 as Harvard College and named for its first"
                          " benefactor, "
                          "the Puritan clergyman John Harvard, it is the oldest institution of higher learning in the United States."),
                ),
              );
            },
            child: ListTile(
              leading: Image(image: AssetImage("images/download4.png")),
              title: Text("Harvard University"),
              subtitle: Text("Fourth Number"),
            )),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                      title: "Carnegie Mellon University",
                      description:
                          "Carnegie Mellon University is a private research "
                          "university in Pittsburgh, Pennsylvania. The institution was originally established in 1900 by Andrew"
                          " Carnegie as the Carnegie Technical Schools. In 1912, it became the Carnegie "
                          "Institute of Technology and began granting four-year degrees."),
                ),
              );
            },
            child: ListTile(
              leading: Image(image: AssetImage("images/download5.jpg")),
              title: Text("Carnegie Mellon University"),
              subtitle: Text("Fifth Number"),
            )),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                      title: "University of California, Berkeley",
                      description: "The University of California, Berkeley is "
                          "a public land-grant research university in Berkeley, California. Established in 1868 as the University "
                          "of California, it is the state's first land-grant university and the founding"
                          " campus of the University of California system."),
                ),
              );
            },
            child: ListTile(
              leading: Image(image: AssetImage("images/download6.png")),
              title: Text("University of California, Berkeley"),
              subtitle: Text("Sixth Number"),
            )),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                      title: "University of Oxford",
                      description:
                          "The University of Oxford is a collegiate research university"
                          " in Oxford, England. There is evidence of teaching as early as 1096,[2] making it the oldest university "
                          "in the English-speaking"
                          " world and the world's second-oldest university in continuous operation.[2][11][12] It grew rapidly "
                          "from 1167 when Henry II banned English students from attending the University of Paris.[2] After disputes "
                          "between students and Oxford townsfolk in 1209, some academics fled north-east to Cambridge where they "
                          "established what became the University of Cambridge.[13] The two English ancient universities share many "
                          "common features and are jointly referred to as Oxbridge  The university is made up of thirty-nine semi-autonomous"
                          " constituent colleges, five permanent private halls, and a range of academic departments which are "
                          "organised into four divisions.[14] All the colleges are self-governing institutions within the university,"
                          " each controlling its own membership and with its own internal structure and activities. All students are"
                          " members of a college.[15] It does not have a main campus, and its buildings and facilities are scattered "
                          "throughout the city centre. Undergraduate teaching at Oxford consists of lectures, small-group tutorials at"
                          " the colleges and halls, seminars, laboratory work and occasionally further tutorials provided by the"
                          " central university faculties and departments. Postgraduate teaching is provided predominantly centrally "
                          " Oxford operates the world's oldest university museum, the largest university press in"
                          " the world and the largest academic library system nationwide.[16] In the fiscal year ending 31 "
                          "July 2022, the university had a total consolidated income of £2.78 billion, of which £711.4 million was "
                          "from research grants and contracts.[4]    Oxford has educated a wide range of notable alumni,"
                          " including 30 prime ministers of the United Kingdom and many heads of state and government "
                          "around the world.[17] As of October 2022, 73 Nobel Prize laureates, 4 Fields Medalists, and 6 Turing "
                          "Award winners have studied, worked, or held visiting fellowships at the University of Oxford, while its"
                          " alumni have won 160 Olympic medals.[18] Oxford is the home of numerous scholarships, including the Rhodes "
                          "Scholarship, one of the oldest "
                          "international graduate scholarship programmes The University of Oxford is a collegiate"
                          " research university in Oxford, England. There is evidence of teaching as early as 1096, making it"
                          " the oldest university in the English-speaking world and the world's "
                          "second-oldest university in continuous"),
                ),
              );
            },
            child: ListTile(
              leading: Image(image: AssetImage("images/download7.png")),
              title: Text("University of Oxford"),
              subtitle: Text("Seventh Number"),
            )),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                      title: "Princeton University",
                      description:
                          "Princeton University is a private Ivy League"
                          " research university in Princeton, New Jersey. Founded in 1746 in Elizabeth as the "
                          "College of New Jersey, Princeton is the fourth-oldest institution of higher education "
                          "in the United States and one of the nine colonial colleges chartered before the American"
                          " Revolution.[8][9][a] The institution moved to Newark in 1747, and then to the current"
                          " site nine years later. It officially became a university in 1896 and was subsequently"
                          " renamed Princeton University   The university is governed by the Trustees"
                          " of Princeton University and has an endowment of 37.7 billion,"
                          " the largest endowment per student in the United States. Princeton provides"
                          " undergraduate and graduate instruction in the humanities, social sciences, natural"
                          " sciences, and engineering to approximately 8,500 students on its 600 acres (2.4 km2) main campus."
                          " It offers postgraduate degrees through the Princeton School of Public and International Affairs, "
                          "the School of Engineering and Applied Science, the School of Architecture and the Bendheim Center for"
                          " Finance. The university also manages the Department of Energy's Princeton Plasma Physics Laboratory"
                          " and is home to the NOAA's Geophysical Fluid Dynamics Laboratory. It is classified among "
                          " and has one of the largest university libraries in the world.[14]   Princeton uses a residential college system"
                          " and is known for its upperclassmen eating clubs. The univers ity has over 500 student "
                          "organizations. Princeton students embrace a wide variety of traditions from both the past "
                          "and present. The university is a NCAA Division I school and competes in the Ivy League."
                          " The school's athletic team, the Princeton Tigers, has won the most titles in its "
                          "conference and has sent many students and alumni to the Olympics.As of October 2021, "
                          "75 Nobel laureates, 16 Fields Medalists and 16 Turing Award laureates have been affiliated "
                          "with Princeton University as alumni, faculty members, or researchers. In addition, Princeton"
                          " has been associated with 21 National Medal of Science awardees, 5 Abel Prize awardees, "
                          "11 National Humanities Medal recipients, 217 Rhodes Scholars and 137 Marshall Scholars. "
                          "Two U.S. Presidents, twelve U.S. Supreme Court Justices (three of whom currently serve on "
                          "the court) and numerous living industry and media tycoons and foreign heads of state are all "
                          "counted among Princeton's alumni body. Princeton has graduated many members of the U.S."
                          " Congress and the U.S. Cabinet, including eight Secretaries of State, three Secretaries "
                          "of Defense and two Chairmen of the Joint Chiefs of Staff."),
                ),
              );
            },
            child: ListTile(
              leading: Image(image: AssetImage("images/download8.png")),
              title: Text("Princeton University"),
              subtitle: Text("Eighth Number"),
            )),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                      title: "University of Cambridge",
                      description: "The University of Cambridge is a public "
                          "collegiate research university in Cambridge, England. Founded in 1209, the University "
                          "of Cambridge is the third-oldest university in continuous operation. The university's"
                          " founding followed the arrival of scholars who left the University of Oxford for Cambridge"
                          " after a dispute with local townspeople.[10][11] The two ancient English universities, "
                          "although sometimes described as rivals, share many common features and are often jointly"
                          " referred to as Oxbridge. In 1231, 22 years after its founding, the university was "
                          "recognised with a royal charter granted by King Henry III.  The University of Cambridge"
                          " includes 31 semi-autonomous constituent colleges and over 150 academic departments,"
                          " faculties, and other institutions organised into six schools. All of the colleges are"
                          " self-governing institutions within the university, managing their own personnel and "
                          "policies, and all students are required to have a college affiliation within the "
                          "university. Undergraduate teaching at Cambridge is centred on weekly small-group"
                          " supervisions in the colleges with lectures, seminars, laboratory work, and occasionally"
                          " further supervision provided by the central university faculties and "
                          "departments.[12][13]   The university operates eight cultural and scientific museums, "
                          "including the Fitzwilliam Museum and Cambridge University Botanic Garden. Cambridge's "
                          "116 libraries hold a total of approximately 16 million books, around nine million of"
                          " which are in Cambridge University Library, a legal deposit library and one of the world's"
                          " largest academic libraries "),
                ),
              );
            },
            child: ListTile(
              leading: Image(image: AssetImage("images/download10.png")),
              title: Text("University of Cambridge"),
              subtitle: Text("Ninth Number"),
            )),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailsPage(
                      title: "ETH Zürich",
                      description:
                          "ETH Zurich (English: ETH; Swiss Federal Institute of Technology "
                          "in Zürich; German: Eidgenössische Technische Hochschule Zürich) is a public"
                          " research university in Zürich, Switzerland. Founded by the Swiss federal government"
                          " in 1854, it was modeled on the École polytechnique in Paris, with the stated mission "
                          "to educate engineers and scientists; the school focuses primarily on science, "
                          "technology, engineering, and mathematics, although its 16 departments span a "
                          "variety of disciplines and subjects.[5][6]  Like its sister institution, "
                          "the Swiss Federal Institute of Technology in Lausanne (EPFL), ETH Zurich is "
                          "part of the Swiss Federal Institutes of Technology Domain, a consortium of "
                          "government universities and research institutes under the Swiss Federal Department "
                          "of Economic Affairs, Education and Research.[7] As a public institution, it grants"
                          " admission to every Swiss resident who has matriculated. As of 2021, ETH Zurich "
                          "enrolled 24,500 students from over 120 countries, of which 4,460 were pursuing "
                          "doctoral degrees.[2]   ETH Zurich has a world-class reputation "
                          "in academia and industry, particular in science and technology.[8]"
                          " It regularly ranks among the top three to five universities in Europe and one"
                          " of the top 15 to 20 globally. In the 2022 QS World University Rankings, the "
                          "university ranked eighth in the world and fourth in Europe in academic excellence,"
                          " with 2021 edition placing it fourth in the world for engineering and technology "
                          "(second in Europe) and first for earth and marine science. The Times Higher Education"
                          " World University Rankings of 2022-23 ranked ETH Zurich 11th worldwide. Students,"
                          " faculty, and researchers affiliated with ETH Zurich include 22 Nobel laureates,"
                          " two Fields Medalists, three Pritzker Prize winners, and one Turing Award recipient, "
                          "including Albert Einstein and John von Neumann.[9] It is a founding member of the "
                          "IDEA League and the International Alliance of Research Universities (IARU), and"
                          " a member of the CESAER network"),
                ),
              );
            },
            child: ListTile(
              leading: Image(image: AssetImage("images/220px-ETHZ10.jpg")),
              title: Text("ETH Zürich"),
              subtitle: Text("Tenth Number"),
            )),
      ]),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String title;
  final String description;

  const DetailsPage({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(description),
      ),
    );
  }
}
