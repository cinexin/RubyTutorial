# Lesson 8 - Blocks, Procs & Lambdas
# Review Exercises (exercises from 17 to 21)

# Exercise 17
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
ints = odds_n_ends.select{ |item| item.is_a? Integer}
puts ints

# Exercises 18 & 19
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new {
    |x|
    x < 100
}
youngsters = ages.select(&under_100)
puts youngsters

# Exercises 20 & 21
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

# note that if we're dealing with a hash, we'll need to access in a |key, value| way
first_half = lambda {
    |k,v|
    v < "M"
}

a_to_m = crew.select(&first_half)
puts a_to_m
