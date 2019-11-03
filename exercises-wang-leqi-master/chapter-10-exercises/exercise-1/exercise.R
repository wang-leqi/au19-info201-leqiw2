# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games
# of the season (google "Seahawks" for the scores!)
score <- c(28, 27, 27, 30)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season

lose <- c(26, 33, 10, 29)

# Combine your two vectors into a dataframe called `games`
games <- data.frame(score, lose)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
diff <- score - lose

# Create a new column "won" which is TRUE if the Seahawks won the game

won <- diff > 0

# combine data: 
  
cbind(games, won)

# Create a vector of the opponent names corresponding to the games played

name_opp <- c("Steelers", "Saints", "Cardinals", "Rams")

# Assign your dataframe rownames of their opponents

rownames(games) <- name_opp

# View your data frame to see how it has changed!

View(games)
