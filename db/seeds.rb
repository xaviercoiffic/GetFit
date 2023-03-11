# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create([{
  name: "Kevin Hezrog",
  email: "khezrog@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1676718216/Get%20fit%20seed%20image/Kevin_Herzog_ime9pv.png",
  instructor: true,
  description: "Kevin is a highly experienced personal trainer who has helped countless clients achieve their fitness goals. He specialises in weight training and is known for his ability to design personalised workout programs that are tailored to each client's individual needs and abilities.",
  speciality:["CrossFit", "Fitness", "Weights"],
  height: 170,
  weight: 68,
},
{
  name: "Larry Leffler",
  email: "lleffler@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1676718217/Get%20fit%20seed%20image/Larry_Leffler_slyekr.png",
  instructor: true,
  description: "Larry is a certified yoga instructor who is passionate about helping people improve their physical and mental health through yoga. He has a gentle and calming teaching style that is well-suited to beginners and experienced practitioners alike.",
  speciality:["Yoga", "Mind-body", "Flexibility"],
  height:  175,
  weight: 75,
},
{
  name: "Charlotte Pollich",
  email: "cpollich@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1676718217/Get%20fit%20seed%20image/Charlotte_Pollich_tt6mpd.png",
  instructor: true,
  description: "Charlotte is a former professional athlete who now works as a sports performance coach. She specialises in helping athletes improve their speed, agility, and strength, and has a proven track record of success with clients at all levels of competition.",
  speciality:["Boxing", "Combat", "Bag"],
  height:  165,
  weight: 55,
},
{
  name: "Tami Haley",
  email: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1676718217/Get%20fit%20seed%20image/Tami_Haley_aouucv.png",
  password: "123456",
  photo: "thaley@gmail.com",
  instructor: true,
  description: "Tami is a group fitness instructor who teaches a wide range of classes, from high-intensity interval training to dance-based workouts. She has a fun and upbeat teaching style that motivates her clients to push themselves to their limits.",
  speciality:["Pilates", "Fitness", "Core"],
  height:  162,
  weight: 51,
},
{
  name: "Floyd Morissette",
  email: "fmorissette@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1676718216/Get%20fit%20seed%20image/Floyd_Morissette_p6ioxm.png",
  instructor: true,
  description:  "Floyd is a nutrition coach who helps clients achieve their fitness goals through healthy eating. He has a deep understanding of nutrition and is able to create customised meal plans that are both delicious and effective.",
  speciality: ["Spinning", "Cycling", "Endurance"],
  height:  175,
  weight: 73,
},
{
  name: "Teri Frami",
  email: "tframi@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1676718217/Get%20fit%20seed%20image/Teri_Frami_iysk79.png",
  instructor: true,
  description: "Teri is a Pilates instructor who has a strong focus on core strength and flexibility. Her classes are challenging yet accessible to all levels of fitness, and she is known for her ability to provide individualised attention to each client.",
  speciality: ["Bodybuilding", "Strength", "Muscles"],
  height:  168,
  weight: 65,
},
{
  name: "Trevor Hartmann",
  email: "thartmann@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1676718216/Get%20fit%20seed%20image/Trevor_Hartmann_w2gf5m.png",
  instructor: true,
  description: "Trevor is a boxing coach who specialises in teaching the art of boxing to both beginners and experienced fighters. He has a no-nonsense teaching style that is focused on technique and form, and he is known for his ability to help clients improve their fitness while having fun.",
  speciality: ["MMA", "Combat", "Jiu-Jitsu"],
  height:  179,
  weight: 80,

},
{
  name: "Ellis Hand",
  email: "ehand@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1676718216/Get%20fit%20seed%20image/Ellis_Hand_ssxd4p.png",
  instructor: true,
  description: "Ellis is a functional training coach who specialises in creating workouts that are designed to improve overall fitness and functional strength. His programs are perfect for clients who are looking to improve their performance in everyday activities or sports.",
  speciality: ["Zumba", "Dance", "Cardio"],
  height:  167,
  weight: 55,

},
{
  name: "Sarah Hansen",
  email: "shansen@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1676718216/Get%20fit%20seed%20image/Sarah_Hansen_vyjowr.png",
  instructor: true,
  description: "Sarah is a cycling coach who is passionate about helping clients improve their cardiovascular fitness and endurance through indoor cycling classes. She has a strong focus on form and technique, and her classes are both challenging and fun.",
  speciality: ["Kickboxing", "Martial", "Sparring"],
  height:  170,
  weight: 52,

},
{
  name: "Janet Hagenes",
  email: "jhagenes@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dhz2o0n8s/image/upload/v1676718217/Get%20fit%20seed%20image/Janet_Hagenes_qacdhg.png",
  instructor: true,
  description: "Janet is a wellness coach who takes a holistic approach to health and fitness. She helps clients to achieve their goals by focusing on both physical fitness and mental wellness, and is known for her ability to provide personalised support and guidance to each of her clients.",
  speciality: ["Bootcamp", "Fitness", "Training"],
  height: 172,
  weight: 60,
},
{
  name: "Xavier Coiffic",
  email: "xavier.coiffic@gmail.com",
  password: "abc123",
  photo: "https://res.cloudinary.com/dbfx0jmo6/image/upload/v1678035505/GetFit/Users/Xavier_tts8lu.png",
  instructor: false,
  description: " Hi, I'm Xavier and I would like to give GetFit a try",
  speciality: ["Bootcamp", "Fitness", "Training"],
  height: 173,
  weight: 60,
},
{
  name: "Neil Dussoye",
  email: "dussoye.neil@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dbfx0jmo6/image/upload/v1678538742/GetFit/assets/Img/Ellipse_11_qwheob.png",
  instructor: false,
  description: "Neil is a person who has a keen interest in sports, but he is not currently in a physically fit state. Despite his current condition, Neil is motivated to improve his fitness level and hopes to actively participate in sports in the future.",
  speciality: ["Bootcamp", "Fitness", "Training"],
  height: 170,
  weight: 60,
},
{
  name: "Azhar Ollibokus",
  email: "azhar4@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/dbfx0jmo6/image/upload/v1678538741/GetFit/assets/Img/Ellipse_12_rzinlq.png",
  instructor: true,
  description: "Specialties: Boxing, Crossfit

  About Me:
  I am a certified fitness instructor with a passion for helping people achieve their fitness goals. With over 5 years of experience in the fitness industry, I have gained extensive knowledge and expertise in various areas of fitness, particularly in boxing and Crossfit.

  Education and Certifications:

  Crossfit Level 1 Trainer Certification
  USA Boxing Coach Certification
  CPR/AED Certified
  Training Style:
  My training style is focused on combining the principles of boxing and Crossfit to provide a challenging and effective workout for my clients. I believe in pushing my clients to their limits while also ensuring that they maintain proper form and technique to prevent injury.

  Services Offered:

  One-on-one personal training sessions
  Group fitness classes (boxing and Crossfit)
  Nutritional guidance and meal planning
  Philosophy:
  I strongly believe that fitness is not just about physical strength but also mental resilience. Through my training, I aim to help my clients build both physical and mental strength to achieve their goals and improve their overall health and wellbeing.

  Interests:
  When I'm not training, I enjoy practicing martial arts, reading about fitness and nutrition, and spending time with my family and friends.",
  speciality: ["Bootcamp", "Fitness", "Training"],
  height: 170,
  weight: 60,
}
])
Review.create!([{
  user_id: 1,
  content: "I had the pleasure of working with Kevin Hezrog, a CrossFit, Fitness, and Weights specialist, during my fitness journey. Kevin is an excellent instructor who knows how to motivate and challenge his students. His classes were always well-planned, with a variety of exercises and movements that kept me engaged and energized. He is also very approachable and always willing to provide feedback and advice to help me improve my form and technique. Overall, Kevin is a top-notch instructor, and I would highly recommend him to anyone looking to take their fitness to the next level.",
  rating: 4
  },
  {
  user_id: 2,
  content: "I recently started taking classes with Larry Leffler, a Yoga, Mind-body, and Flexibility expert, and I have been blown away by his teaching style. Larry's classes are always calming and rejuvenating, and he provides clear instructions and modifications to accommodate different levels of ability. He has a calming presence that makes me feel relaxed and focused during each class. His expertise in mindfulness and flexibility has helped me to improve my overall wellness and achieve a greater sense of balance and peace. I would highly recommend Larry to anyone looking to enhance their yoga practice or develop a deeper connection between their mind and body.",
  rating: 3
  },
  {
  user_id: 3,
  content: "Charlotte Pollich is a Boxing, Combat, and Bag specialist who I have had the pleasure of working with. Charlotte is an outstanding instructor who is passionate about her craft and dedicated to helping her students achieve their full potential. Her classes are challenging, engaging, and fun, and she creates a supportive environment that encourages everyone to push themselves to their limits. Charlotte is also very knowledgeable and provides excellent instruction on form, technique, and strategy. I highly recommend Charlotte to anyone looking to improve their boxing or combat skills.",
  rating: 2
  },
  {
  user_id: 4,
  content: "Tami Haley is a Pilates, Fitness, and Core specialist who I have had the pleasure of working with. Tami is an exceptional instructor who is knowledgeable, professional, and motivating. Her classes are well-organized, challenging, and fun, and she always provides clear instruction and feedback to help me improve my technique and form. Tami is also very approachable and creates a supportive environment that encourages everyone to succeed. I highly recommend Tami to anyone looking to improve their fitness and core strength.",
  rating: 4
  },
  {
  user_id: 5,
  content: "Floyd Morissette is a Spinning, Cycling, and Endurance specialist who I have had the pleasure of working with. Floyd is an exceptional instructor who is knowledgeable, professional, and motivating. His classes are high-energy, challenging, and fun, and he always provides clear instruction and feedback to help me improve my technique and form. Floyd is also very approachable and creates a supportive environment that encourages everyone to succeed. I highly recommend Floyd to anyone looking to improve their endurance and cycling skills.",
  rating: 4
  },
  {
  user_id: 6,
  content: "Teri Frami is a Bodybuilding, Strength, and Muscles specialist who I have had the pleasure of working with. Teri is an exceptional instructor who is knowledgeable, professional, and motivating. Her classes are well-organized, challenging, and fun, and she always provides clear instruction and feedback to help me improve my technique and form. Teri is also very approachable and creates a supportive environment that encourages everyone to succeed. I highly recommend Teri to anyone looking to improve their bodybuilding or strength training.",
  rating: 3
  },
  {
  user_id: 7,
  content: "Trevor is an exceptional instructor who brings a wealth of knowledge and experience to his classes. His passion for MMA, combat, and jiu-jitsu is evident in his teaching style, and he is always willing to go above and beyond to ensure that his students are getting the most out of each session. Trevor is patient, approachable, and always willing to answer any questions his students may have. I highly recommend Trevor to anyone looking to improve their skills in MMA, combat, or jiu-jitsu.",
  rating: 4
  },
  {
  user_id: 8,
  content: "If you're looking for a fun and energetic way to get in shape, look no further than Ellis Hand's classes! Ellis is an expert in Zumba, dance, and cardio, and her classes are always a blast. She has a contagious energy that keeps her students motivated throughout the entire session. Ellis is an excellent instructor who takes the time to break down each move and make sure her students are getting the most out of their workout. I highly recommend Ellis to anyone looking for a fun and effective way to get in shape.",
  rating: 4
  },
  {
  user_id: 9,
  content: "Sarah is an outstanding instructor who is passionate about kickboxing, martial arts, and sparring. Her classes are intense, but she always makes sure that her students are working at a level that is comfortable for them. Sarah is patient, approachable, and always willing to go the extra mile to help her students improve their skills. Her love for the sport is infectious, and it's impossible not to be motivated by her enthusiasm. I highly recommend Sarah to anyone looking to improve their skills in kickboxing, martial arts, or sparring.",
  rating: 4
  },
  {
  user_id: 9,
  content: "Janet is an excellent instructor who has a gift for motivating her students and pushing them to their limits. Her bootcamp, fitness, and training classes are intense, but she always ensures that her students are working at a level that is safe and effective for them. Janet is an expert in her field and always keeps her classes interesting and challenging. She is approachable, knowledgeable, and always willing to answer any questions her students may have. I highly recommend Janet to anyone looking to improve their fitness and take their training to the next level.",
  rating: 2
  }])


User.find_each do |user|
  Package.create!(
    {
    user_id: user.id,
    title: "Daily",
    description: "The daily gym package is perfect for those who are looking for a one-time visit to the gym or who want to try out the facilities before committing to a longer membership.",
    price: 100,
    }
    )
  Package.create!(
    {
    user_id: user.id,
    title: "Weekly",
    description: "If you're looking for a more extended workout routine, the weekly gym package might be a better fit for you. With this package, you can enjoy all the benefits of a daily package, but for an entire week.",
    price: 500,
    }
    )
  Package.create!(
    {
    user_id: user.id,
    title: "Monthly",
    description: "For those who are serious about their fitness goals, the monthly gym package is the perfect solution. With this package, you'll have access to the gym's facilities and amenities for an entire month.",
    price: 2000,
    }
    )

  end
