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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990304/Kevin_Herzog_ksdcdf_ojpe7p.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990307/Larry_Leffler_ksuzgw_ywq3ri.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990273/Charlotte_Pollich_hsklhe_kbzpnx.png",
  instructor: true,
  description: "Charlotte is a former professional athlete who now works as a sports performance coach. She specialises in helping athletes improve their speed, agility, and strength, and has a proven track record of success with clients at all levels of competition.",
  speciality:["Boxing", "Combat", "Bag"],
  height:  165,
  weight: 55,
},
{
  name: "Tami Haley",
  email: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990309/Tami_Haley_kxxv2m_dldohu.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990285/Floyd_Morissette_xmom3s_jrmavx.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990319/Teri_Frami_qmbxks_pqdn2g.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990318/Trevor_Hartmann_op1dwm_blefah.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990290/Ellis_Hand_btxsze_plrptl.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990326/Sarah_Hansen_ss7wkb_fw5rw3.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990306/Janet_Hagenes_y5fjac_xpr8cu.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990320/Xavier_tts8lu_t1icu8.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990291/Ellipse_11_qwheob_m1f9wz.png",
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
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990281/Ellipse_12_rzinlq_o0cwcf.png",
  instructor: true,
  description: "Azhar is a certified yoga teacher with a fervor for aiding individuals in enhancing their physical and mental well-being using yoga. His teaching approach is serene and soothing, making it ideal for both novices and seasoned practitioners.",
  speciality: ["Yoga", "Fitness", "Training"],
  height: 170,
  weight: 60,
},
{
  name: "Mohammad Yaasir",
  email: "yaasir@gmail.com",
  password: "123456",
  photo: "https://res.cloudinary.com/ds9pt6yxa/image/upload/v1678990317/yassir_djra7l_hnxnjg.png",
  instructor: true,
  description: "Yaasir is a skilled and experienced fitness coach who has a unique expertise in three distinct areas of physical training: yoga, martial arts, and weight lifting. With a passion for helping others reach their fitness goals, Yaasir uses his knowledge and training to create personalized workout plans that cater to each individual's needs and abilities",
  speciality: ["Yoga", "Martial", "Weight Lifting"],
  height: 175,
  weight: 120,
}
])



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
