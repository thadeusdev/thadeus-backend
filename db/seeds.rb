# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# seeds.rb

# Clear existing data
User.destroy_all
Service.destroy_all
Project.destroy_all
Blog.destroy_all
Gallery.destroy_all
TechStack.destroy_all

# Create users
user = User.create!(
  id: 0,
  first_name: "Thadeus",
  last_name: "Nyariki",
  image: ""
)

# create tech-stacks
TechStack.create!(
    id: 0,
    name: "React"
)

TechStack.create!(
    id: 1,
    name: "Rails"
)

TechStack.create!(
    id: 2,
    name: "Angular"
)

TechStack.create!(
    id: 3,
    name: "Firebase"
)

# Create services
Service.create!(
  id: 0,
  title: "Web Development",
  description: "Armed with expertise in Angular, React, Next.js, Ruby, Firebase, and Heroku, I seamlessly navigate the realms of front-end and back-end development. My journey includes meaningful contributions to open source projects, showcasing my commitment to community-driven innovation. Whether crafting dynamic user interfaces or building scalable server-side solutions, I thrive on creating seamless and impactful web experiences. Let's turn ideas into digital realities!",
)

Service.create!(
  id: 1,
  title: "Android Development",
  description: "Using Java, Android Studio, and Firebase, I build robust and user-centric applications. From designing intuitive user interfaces to implementing powerful backend solutions with Firebase, I am passionate about delivering seamless mobile solutions. With a track record of contributing to innovative projects, my commitment to excellence in Android development shines through. Let's bring your app ideas to life and make an impact in the ever-evolving world of mobile technology!",
)

Service.create!(
  id: 2,
  title: "Data Center Operations",
  description: "Being a seasoned professional with a strong background in operating world-class data centers. With specialized expertise in Electrical & Electronics and Networking, I bring a wealth of experience to the realm of technology infrastructure. Proficient in handling the intricacies of data center operations, my skills extend from ensuring robust electrical systems to implementing cutting-edge networking solutions. From optimizing performance to ensuring seamless connectivity, I am dedicated to maintaining the highest standards in data center excellence. Let's collaborate to elevate your infrastructure and take it to the next level in the dynamic world of technology.",
)

Service.create!(
  id: 3,
  title: "Instruments and Control",
  description: "Worked in the field of Instrumentation and Control, specializing in PLC (Programmable Logic Controller), DCS (Distributed Control System), Modbus, and precision gauges. With a strong foundation in managing industrial automation systems, I excel in designing, implementing, and optimizing control processes. My expertise lies in seamlessly integrating PLCs and DCS for efficient control, utilizing Modbus for communication, and ensuring accurate measurements through precision gauges. Having contributed to the orchestration of sophisticated control solutions, I am passionate about enhancing operational efficiency and reliability. Let's collaborate to bring precision and innovation to your industrial processes.",
)

# Create projects
project_elewa = Project.create!(
  id: 0,
  title: "Elewa",
  description: "The Elewa Conversational Manager. An open-source chatbot editor and manager which allows hosting and using conversational learning projects.",
  category: "Open Source",
  stars: 45,
  forks: 235,
  tech_stacks: ["Angular", "Firebase"],
  project_url: "xyz",
  github_url: "https://github.com/italanta/elewa"
)

project_elewa_website = Project.create!(
  id: 1,
  title: "Elewa-Website",
  description: "The Elewa Conversational Manager. An open-source chatbot editor and manager which allows hosting and using conversational learning projects.",
  category: "Open Source",
  stars: 9,
  forks: 129,
  tech_stacks: ["Angular"],
  project_url: "https://elewa.education/home",
  github_url: "https://github.com/italanta/elewa-website"
)

project_hospital_management = Project.create!(
  id: 2,
  title: "Hospital-Management-System",
  description: "This application allows users in a hospital environment to handle their daily records.",
  category: "Personal Project",
  stars: 3,
  forks: 2,
  tech_stacks: ["Rails", "React"],
  project_url: "xyz",
  github_url: "https://github.com/thadeusdev/hospital-management-system"
)

project_cargurux = Project.create!(
  id: 3,
  title: "Cargurux",
  description: "A web application that users can use to view and buy cars. This web is ideal for car lovers.",
  category: "Personal Project",
  stars: 0,
  forks: 0,
  tech_stacks: ["React"],
  project_url: "https://carguruz.netlify.app/",
  github_url: "https://github.com/thadeusdev/cargurux"
)

# Create blogs
blog_1 = Blog.create!(
  id: 0,
  title: "Welcome to my Blog",
  about: "Introduction",
  paragraphs: [
    "Here you'll find a collection of my thoughts, and topics that I care about and believe are important. From personal development to technology and everything in between. I hope you'll find something here that resonates with you.",
    "Feel free to dive into any posts that catch your eye and don't hesitate to leave a comment if you have something to say. I'm always open to feedback and discussion.",
    "Thanks for stopping by, and I hope you enjoy your time here."
  ],
  image: "https://thadeus.vercel.app/assets/welcome.gif",
  created_on: "1/18/2024",
  user_id: 0
)

blog_2 = Blog.create!(
  id: 1,
  title: "Welcome to my Blog",
  about: "Introduction",
  paragraphs: [
    "Here you'll find a collection of my thoughts, and topics that I care about and believe are important. From personal development to technology and everything in between. I hope you'll find something here that resonates with you.",
    "Feel free to dive into any posts that catch your eye and don't hesitate to leave a comment if you have something to say. I'm always open to feedback and discussion.",
    "Thanks for stopping by, and I hope you enjoy your time here."
  ],
  image: "https://thadeus.vercel.app/assets/welcome.gif",
  created_on: "1/18/2024",
  user_id: 0
)

# Create about-me
about_me_1 = AboutMe.create!(
  id: 0,
  title: "Software Engineer",
  paragraphs: [
    "As software engineer, I have a passion for crafting innovative solutions and enhancing user experiences. My journey into the world of technology began at Moringa School, where I honed my skills and gained a solid foundation in software engineering.",
    "During my time at Moringa School, I delved into various aspects of software development, building a strong understanding of programming languages, algorithms, and problem-solving techniques. This educational background laid the groundwork for my professional journey.",
    "I had the invaluable opportunity to apply my knowledge and skills through an apprenticeship at Italanta, where I had the privilege of working on exciting projects involving Angular apps and Firebase. This hands-on experience allowed me to delve deeper into the practical aspects of software development, from designing robust applications to implementing scalable solutions.",
    "Working with Italanta not only expanded my technical expertise but also provided insights into collaborative teamwork and effective communication within a development environment. The dynamic nature of building Angular apps and utilizing Firebase further enriched my skill set, equipping me with the tools to create modern and efficient web applications.",
    "As a software engineer, I am committed to staying abreast of the latest industry trends and technologies, ensuring that my skill set remains current and relevant. My goal is to continue contributing to the ever-evolving field of software engineering, creating impactful solutions that make a positive difference.",
    "As a software engineer, I am committed to staying abreast of the latest industry trends and technologies, ensuring that my skill set remains current and relevant. My goal is to continue contributing to the ever-evolving field of software engineering, creating impactful solutions that make a positive difference."
  ]
)

about_me_2 = AboutMe.create!(
  id: 1,
  title: "Data Center Engineer",
  paragraphs: [
    "I am a seasoned Data Center Engineer with over three years of hands-on experience in the dynamic and critical realm of data center operations. My professional journey has equipped me with a comprehensive skill set that spans various aspects of data center management, ensuring the seamless functioning of critical infrastructure.",
    "My expertise lies in performing crucial operations within the data center environment, where I have successfully executed tasks such as rack installations, ensuring the physical integrity and optimal performance of servers and associated equipment. I take pride in my ability to meticulously handle monitoring processes, ensuring the continuous health and performance of systems, and promptly addressing any anomalies that may arise.",
    "As a reliable point of contact for customers, I have served as the first line of support, demonstrating exceptional troubleshooting skills to resolve issues swiftly and efficiently. I am well-versed in ticketing systems, utilizing them to track, prioritize, and manage tasks effectively, ensuring that the data center operates at peak efficiency.",
    "One of my key responsibilities involves cross-connecting customers, facilitating seamless communication and data exchange within the data center ecosystem. This demands a keen understanding of networking principles and a proactive approach to meeting customer connectivity needs promptly and accurately.",
    "Over the years, I have honed my communication skills to foster strong relationships with customers and internal teams. Being the first point of contact for customers, I understand the importance of clear and concise communication to address concerns, provide updates, and ensure a positive customer experience.",
    "In this ever-evolving field, I am committed to staying updated with the latest advancements in data center technology and industry best practices. My dedication to maintaining a robust and efficient data center environment reflects my passion for contributing to the backbone of modern technological infrastructure.",
    "In summary, I bring a wealth of experience in data center operations, rack installations, monitoring, ticketing, troubleshooting, and customer interactions. My proactive and detail-oriented approach, coupled with strong technical acumen, positions me as a valuable asset in the fast-paced and critical world of data center engineering."
  ]
)

about_me_3 = AboutMe.create!(
  id: 2,
  title: "Instrumentation & Control Technician",
  paragraphs: [
    "After completing my university studies, embarked on a rewarding journey in the field of instrumentation and control technology. During my internship at Kibos Sugar Company, I served as an Instrumentation and Control Technician for three months, where I played a pivotal role in ensuring the efficient and seamless operation of various processes within the company.",
    "In the dynamic environment of Kibos Sugar Company, I took on a range of responsibilities that showcased my technical prowess and problem-solving abilities. Some of my key achievements during this period include:",
    "Repairing and installing directional valves on hydro loaders in the cane yard: I contributed to the reliability of equipment crucial for cane handling and processing.",
    "Servicing and installing AC-DC converters in the cane yard: Ensuring the smooth functioning of converters essential for powering equipment in the cane yard.",
    "Installing and calibrating chute level and roller lift sensors in the mills: Precision installation and calibration of sensors to optimize milling processes.",
    "Servicing and installing flow meters in the mills: Contributing to accurate measurement and control of flow within the milling system.",
    "Servicing and connecting pressure switches used for interlocking systems in the mills: Enhancing the safety and efficiency of interlocking systems in the milling processes.",
    "Calibrating and installing pressure, temperature, and vacuum gauges in the boiling house: Ensuring accurate measurement and monitoring of critical parameters in the boiling house.",
    "Troubleshooting temperature indicators and scanners in the boiling house: Swift identification and resolution of issues to maintain optimal performance.",
    "Installing and performing general maintenance of compressors and air dryers in the boiling house: Contributing to the reliability of air compression systems crucial for various processes.",
    "Reprogramming and maintaining distributed control systems (DCS) and programmable logic controllers (PLCs) in the boiling house: Technical expertise in maintaining and optimizing control systems.",
    "Performing general maintenance of pneumatic cylinders and solenoid valves in the boiling house: Ensuring the reliability of pneumatic systems.",
    "Conducting corrective measures on control valves and transmitters in the co-gen section: Swift and effective resolution of issues in pressure reducing and de-superheating systems.",
    "Linking and operating turbine and boiler peripherals to the distribution control systems in the co-gen section: Integration of various components for efficient co-generation.",
    "Installing and connecting temperature scanners, resistance temperature detectors (RTDs), and thermocouples in the co-gen section: Precision installation of temperature measurement devices.",
    "Maintaining motor control circuits and starting methods in the co-gen section: Ensuring the reliability of motor control systems.",
    "My experience at Kibos Sugar Company not only enhanced my technical skills but also instilled in me a deep understanding of the importance of precision and efficiency in industrial processes. I am enthusiastic about leveraging my expertise to contribute to future projects and challenges in the field of instrumentation and control technology."
  ]
)

# Create gallery
image_1 = Gallery.create!(
  id: 0,
  image: "https://thadeus.vercel.app/assets/g1.jpg"
)

image_2 = Gallery.create!(
  id: 1,
  image: "https://thadeus.vercel.app/assets/g2.jpg"
)

image_3 = Gallery.create!(
  id: 2,
  image: "https://thadeus.vercel.app/assets/g3.jpg"
)

image_4 = Gallery.create!(
  id: 3,
  image: "https://thadeus.vercel.app/assets/g4.jpg"
)

image_5 = Gallery.create!(
  id: 4,
  image: "https://thadeus.vercel.app/assets/g5.jpg"
)

image_6 = Gallery.create!(
  id: 5,
  image: "https://thadeus.vercel.app/assets/g6.jpg"
)

image_7 = Gallery.create!(
  id: 6,
  image: "https://thadeus.vercel.app/assets/g7.jpg"
)

image_8 = Gallery.create!(
  id: 7,
  image: "https://thadeus.vercel.app/assets/g8.jpg"
)

image_9 = Gallery.create!(
  id: 8,
  image: "https://thadeus.vercel.app/assets/g10.JPG"
)

image_10 = Gallery.create!(
  id: 9,
  image: "https://thadeus.vercel.app/assets/g11.JPG"
)

image_11 = Gallery.create!(
  id: 10,
  image: "https://thadeus.vercel.app/assets/g12.jpg"
)

image_12 = Gallery.create!(
  id: 11,
  image: "https://thadeus.vercel.app/assets/g13.JPG"
)
