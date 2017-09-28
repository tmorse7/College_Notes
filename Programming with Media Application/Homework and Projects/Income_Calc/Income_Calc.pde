int HHI = 175000;

if (HHI > 430000) {
  println("your household income falls in the top 1%");
 } else if (430000 >= HHI && HHI >= 210000) {
  println("Your household income falls in the top 5%");
} else if (210000 > HHI && HHI >= 155000) {
  println("Your household income falls in the top 10%");
} else if (155000 > HHI && HHI >= 131000) {
  println("Your household income falls in the top 15%");
} else if (131000 > HHI && HHI >= 98000) {
  println("Your household income falls in the top 25%");
} else if (98000 > HHI && HHI >= 55000) {
  println("Your household income falls in the middle 50%");
} else if (55000 > HHI && HHI >= 28000) {
  println("Your household income falls in the bottom 25%");
} else if (28000 > HHI && HHI >= 19000) {
  println("Your household income falls in the bottom 15%");
} else if (19000 > HHI && HHI >= 14000) {
  println("Your household income falls in the bottom 10%");
} else if (14000 > HHI && HHI >= 9900) {
  println("Your household income falls in the bottom 5%");
} else if (9900 > HHI && HHI >= 4700) {
  println("Your household income falls in the bottom 1%");
} else {
  println("Your household income falls in the bottom 1%");
}