import 'package:flutter/material.dart';
import 'package:home_services/commonFIles/footerComponents/footer.dart';
import 'package:home_services/commonFIles/navComponents/navigationBar.dart';

class TAboutUsPage extends StatefulWidget {
  const TAboutUsPage({super.key});

  @override
  State<TAboutUsPage> createState() => _TAboutUsPageState();
}

class _TAboutUsPageState extends State<TAboutUsPage> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar:  PreferredSize(
          preferredSize: Size(screensize.width, 75),
          child: const TNavigationBar()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              width: screensize.width,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "About us",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 140, vertical: 30),
              child: IntrinsicHeight(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Who we are ?",
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "House Hustler is a modern platform revolutionizing home services. Our technology-driven approach connects customers with a wide array of services, all conveniently delivered to their doorstep. From beauty treatments to plumbing, carpentry to appliance repair, House Hustler covers it all, ensuring a seamless experience tailored to our customers' preferences.\n\nWe are committed to delivering a standardized and reliable service experience. To achieve this, we collaborate closely with our carefully selected service partners. Through technology, training, access to quality products and tools, financing options, insurance coverage, and brand support, we empower our partners to excel in their craft and uphold our commitment to excellence.",
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        SizedBox(height: 70),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "How We Do It",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Divider(),
                              SizedBox(height: 10),
                              Text(
                                "At House Hustler, delivering the best work is not just a promise, it's our commitment. We pride ourselves on the expertise and experience of our dedicated workers who go the extra mile to ensure customer satisfaction. With a team of highly skilled professionals, we guarantee top-quality service that exceeds expectations.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Expertise and Experience",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Our workforce comprises seasoned professionals with years of experience in their respective fields. Whether it's fixing a leaky faucet, renovating a kitchen, or deep cleaning a home, our workers bring their expertise to every job, ensuring flawless results.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Going the Extra Mile",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "We believe in the power of going above and beyond for our customers. Our workers are known for their dedication and willingness to put in the extra effort to make sure every customer is happy and satisfied. From attention to detail to personalized service, we take pride in making your experience with House Hustler truly exceptional.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Quick Service",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "We understand that time is precious, which is why we offer prompt and efficient service. Whether you need a last-minute repair or a scheduled appointment, you can count on us to arrive on time and get the job done quickly, without compromising on quality.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Continuous Improvement",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "At House Hustler, we're always striving to improve and innovate. We invest in ongoing training and development for our workers to ensure they stay up-to-date with the latest techniques and technologies. By continuously improving our processes and services, we aim to provide an even better experience for our customers.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Customer Satisfaction Guarantee",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Your satisfaction is our priority. We stand behind the quality of our work, and if for any reason you're not completely satisfied, we'll do everything in our power to make it right. With House Hustler, you can trust that your home is in good hands.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Environmental Responsibility",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "We care about our planet and strive to minimize our environmental impact. That's why we're committed to using eco-friendly products and sustainable practices whenever possible. With House Hustler, you can feel good about choosing a company that cares about the environment.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Community Engagement",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "We believe in giving back to the communities we serve. Through charitable initiatives and community outreach programs, we're dedicated to making a positive difference in the lives of others. When you choose House Hustler, you're not just supporting a business – you're contributing to meaningful change in your community.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "At House Hustler, we're more than just a home service provider – we're your partner in creating a better home and a better world. Experience the House Hustler difference today!",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              // Inserted content
                              SizedBox(height: 70),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Our Vision",
                                    style: TextStyle(
                                      fontSize: 32,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),

                              Divider(),
                              SizedBox(height: 10),
                              Text(
                                "At House Hustler, we're driven by a simple yet powerful vision: to redefine the home service industry. We're on a mission to empower professionals worldwide, delivering unparalleled services directly to customers' homes. Through innovation, excellence, and sustainability, we aim to set new standards and inspire positive change in our communities. Join us in creating spaces that are not just comfortable and efficient, but also enriching and inspiring for everyone. Together, let's build a world where every home is a place of joy, comfort, and inspiration.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              // Inserted content
                              SizedBox(height: 70),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Our Mission",
                                    style: TextStyle(
                                      fontSize: 32,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Divider(),
                              SizedBox(height: 10),
                              Text(
                                "At House Hustler, our mission is simple: to provide exceptional home services that enhance your quality of life. Whether it's fixing a leaky faucet, installing new lighting fixtures, or deep cleaning your home, House Hustler is here to make it happen – quickly, efficiently, and with a smile. We believe that your home should be a place of comfort and relaxation, and we're dedicated to ensuring that it stays that way. Our team of skilled professionals is committed to delivering top-notch service that exceeds your expectations, leaving you with a home that you can truly be proud of.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              // Inserted content
                              SizedBox(height: 70),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Get in Touch",
                                    style: TextStyle(
                                      fontSize: 32,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                              Divider(),
                              SizedBox(height: 10),
                              Text(
                                "Ready to experience the House Hustler difference? Contact us today to schedule your next home service appointment. Whether you need a one-time fix or ongoing maintenance, we're here to help. Our friendly customer service team is standing by to assist you with any questions or concerns you may have. Let us take care of your home so you can focus on what matters most. We can't wait to earn your trust and become your go-to partner for all your home service needs.",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.justify,
                              ),
                              // Inserted content
                              SizedBox(height: 20),
                              Text(
                                "Thank you for choosing House Hustler!",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            footerSection(screenSizeheight: screensize.height,screenSizewidth: screensize.width),
          ],
        ),
      ),
    );
  }
}
