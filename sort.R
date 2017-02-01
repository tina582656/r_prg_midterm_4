#建立函數：sort
my.sort <- function(input_vec, decreasing = FALSE){
  if (decreasing == FALSE){
    vec_length <- length(input_vec)
    for (i in 1:(vec_length - 1)) {
      for (j in (i + 1):vec_length) {
        if (input_vec[i] > input_vec[j]) {
          temp_i <- input_vec[i]
          input_vec[i] <- input_vec[j]
          input_vec[j] <- temp_i
        }
      }
    }
  }else{
    for (i in 1:(vec_length - 1)) {
      for (j in (i + 1):vec_length) {
        if (input_vec[i] > input_vec[j]) {
          temp_i <- input_vec[i]
          input_vec[i] <- input_vec[j]
          input_vec[j] <- temp_i
         }
       }
     }
   }
    return(input_vec)
}

#建立一組隨機向量
input_vec <- round(runif(10)*100)

#對隨機向量進行排序
sort(input_vec, decreasing = TRUE)
sort(input_vec, decreasing = FALSE)
