#Question 1 (a)
#1. 3 + 7 * 2
[1] 17

#2. (3 + 7) * 2
[1] 20

#3. 10/3
[1] 3.333333

#4. sqrt(81)
[1] 9

#Question 1 (b)
x = 10
y = 4
z = x^2 +y
x = x + 5 
x
y
z

#Question 1 (c)
v <- c(2, 8.3, 5, 1, 9)

#1
length(v)

#2
sum(v)

#3
sum(v)/length(v)

#Question 2 (a) 

f_linear <- function(x) {
  3 * x - 2
}

#Question 2 (b) 
weight_sum <- function(x,w) {
  sum(x*w)
}

#Question 2 (c) 
x <- c(1, 2, 3, 4)
num_summary <- function(x) {
  c(length(x),mean(x),sd(x))
}

#Question 3 (a)
classify_number <- function(x){
  if (x == 0) {
    print("zero")
  } else if (x >0) {
    print("positive")
  } else{
    print("negative")
  }
}

#Question 3 (b) 
letter_grade <- function(score){
  if (score >= 90) {
    "A"
  } else if (score >= 80 & score <= 89) {
    "B"
  } else if (score >= 70 & score <= 79){
    "C"
  } else if (score >= 60 & score <= 69){
    "D"
  } else {
    "F"
  }
}


#Question 3 (c) 
scores <- c(95, 82, 75, 63, 50)
for (x in scores) {
  print(letter_grade(x))
}


#Question 4 (a)
x <- c(3, 1, 4, 1, 5, 9)
total <- 0
for (n in x) {
  total <-  total + n
}

#Question 4 (b)
x <- c(3, 1, 4, 1, 5, 9)
count_ge_4 <- 0 
for (n in x) {
  if (n >= 4) {
    count_ge_4 <- count_ge_4 + 1
  }
}

#Question 4 (c) 
running_total <- numeric(length(x))
running_total[1] <- x[1]

for (i in 2:length(x)) {
  running_total[i] <- running_total[i - 1] + x[i]
}



#Question 5 (a)
two_dice_sum <- function() {
  die1 <- sample(1:6, 1)
  die2 <- sample(1:6, 1)
  die1 + die2
}

#Question 5 (b)
set.seed(42)
sums <- numeric(10000)
for (x in 1:10000){
  sums[x] <- two_dice_sum()
}

#Question 5 (c) 
probover10 <- sum(sums >= 10) / length(sums)
