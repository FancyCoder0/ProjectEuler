object p17 {
  val one = Array("one","two","three","four","five","six","seven","eight",
    "nine","ten","eleven","twelve","thirteen","fourteen","fifteen",
    "sixteen","seventeen","eighteen", "nineteen")
  val ty = Array("twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety")
  def calc(x: Int): String = {
    if (x == 0) {
      return ""
    }
    var firstD = x
    while (firstD >= 10) {
      firstD = firstD / 10
    }
    if (x < 20) {
      return one(x - 1)
    } else if (x >= 20 && x < 100) {
      return ty(firstD - 2) + calc(x - firstD * 10)
    } else if (x < 1000 && x % 100 == 0) {
      return one(firstD - 1) + "hundred"
    } else if (x > 100 && x <= 999) {
      return one(firstD - 1) + "hundredand" + calc(x - firstD * 100)
    } else if (x == 1000) {
      return "onethousand"
    }
    ""
  }


  def main(args: Array[String]): Unit = {
    var sum = 0
    for (i <- 1 to 1000) sum = sum + calc(i).length
    println(sum)
  }
}


