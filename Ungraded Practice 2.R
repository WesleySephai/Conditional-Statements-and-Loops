## Thuto Wesley Sephai
## September 2024

## Digital Regenesys
## Ungraded Practice Assignment-2 

## Conditional Statements and Loops 

## 1. Factorial using a loop

num <- as.integer(readline(prompt = "Enter a positive integer: "))

if (num < 0) {
  cat("Factorial not defined for negative numbers.\n")
} else {
  factorial <- 1
  for (i in 1:num) {
    factorial <- factorial * i
  }
  cat("The factorial of", num, "is", factorial, "\n")
}

## 2. Fibonacci sequence up to n

n <- as.integer(readline(prompt = "Enter a number (n): "))

cat("Fibonacci sequence up to", n, ":\n")

a <- 0
b <- 1

if (n >= 0) cat(a, "")
if (n >= 1) cat(",", b)

repeat {
  c <- a + b
  if (c > n) break
  cat(",", c)
  a <- b
  b <- c
}
cat("\n")

## 3. Count occurrences of each letter (ignore case, show only letters)

sentence <- tolower(readline(prompt = "Enter a sentence: "))
letters_only <- gsub("[^a-z]", "", sentence)

counts <- table(strsplit(letters_only, "")[[1]])

cat("Letter   Count\n")
for (letter in names(counts)) {
  cat(sprintf("%-8s %d\n", letter, counts[[letter]]))
}

## 4. Number guessing game (1 to 100)

set.seed(NULL)  # Ensure randomness each time
secret <- sample(1:100, 1)

repeat {
  guess <- as.integer(readline(prompt = "Guess the number (1-100): "))
  
  if (guess > secret) {
    cat("Your number is greater than the randomly generated number\n")
  } else if (guess < secret) {
    cat("Your number is smaller than the randomly generated number\n")
  } else {
    cat("Your number guessed is correct!\n")
    break
  }
}

