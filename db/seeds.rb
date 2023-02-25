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
  review: 5,
  speciality: "Personal Trainer",
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
  review: 4,
  speciality: "Yoga",
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
  review:  3,
  speciality:  "Sports Coach",
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
  review:  2,
  speciality:  "Fitness",
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
  review:  3,
  speciality: "Crossfit",
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
  review: 5,
  speciality:  "Pilates",
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
  review:  "3",
  speciality: "Boxing",
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
  review: 3,
  speciality: "Personal Trainer",
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
  review:  5,
  speciality: "Cycling",
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
  review: 4,
  speciality: "Yoga",
  height: 172,
  weight: 60,

}
])

Package.create!([
  {

    title: "Daily",
    description: "The daily gym package is perfect for those who are looking for a one-time visit to the gym or who want to try out the facilities before committing to a longer membership. With this package, you can enjoy access to the gym's equipment, group fitness classes, and other amenities for a single day. It's a great way to stay active and work towards your fitness goals without any long-term commitment.",
    price: 100,
  },
  {

    title: "Weekly",
    description: "If you're looking for a more extended workout routine, the weekly gym package might be a better fit for you. With this package, you can enjoy all the benefits of a daily package, but for an entire week. This option is ideal for people who travel frequently or those who want to try out the gym for a longer period without making a long-term commitment.",
    price: 500,
  },
  {

    title: "Monthly",
    description: "For those who are serious about their fitness goals, the monthly gym package is the perfect solution. With this package, you'll have access to the gym's facilities and amenities for an entire month. You can work out at your own pace, take advantage of the gym's group fitness classes, and use the equipment to meet your fitness goals. This package offers the best value for money and is the ideal option for those who want to make fitness a regular part of their lifestyle. ",
    price: 2000,
  }
])
