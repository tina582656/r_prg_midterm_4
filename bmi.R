#定義新變數: bmi.calculator()
bmi.calculator <- function(w,h){
  h <- h/100
  bmi <- w/h^2
  return(bmi)
}


#建立input
heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)


#function call
BMI <- mapply (FUN= bmi.calculator, w= weights, h= heights)
BMI <- cbind(heights_and_weights, BMI)
View(BMI)

