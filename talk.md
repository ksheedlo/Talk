# Array Comprehensions in ECMAScript Harmony

James Pfaff, Ken Sheedlo, Jack Skinner

Spring 2013

# Background

- ECMAScript is a popular language for client-side scripting on the web
- Well-known dialects include JavaScript and ActionScript
- Standards are defined in the ECMA-262 spec
- Work on array comprehension syntax is in progress
    - Scheduled for upcoming ECMAScript 6 (Harmony) release

# What are Array Comprehensions?

- A concise syntax for constructing collections
- A combined map, filter and Cartesian product operation

# Why do I want to use them?

- Makes code more expressive
- Changes an imperative style to a declarative one
    - Easier to understand
    - Fewer bugs

# History

- Inspired by set-builder notation
- Implemented in many functional languages
    - Typically as *list comprehensions*
    - Examples: Haskell, Miranda
- Python has them

# Example problem

- Find all odd squares less than 10,000. 
- How can we go about this?
    - Using the smallest JS program
    - No bugs

# Set-builder notation

# Early implementations

# Haskell

- Inspired by Miranda syntax
- Note the convenient shorthand for a list of integers between 1 and 100

        [n*n | n <- [1..100], n*n `mod` 2 == 1]

# Python

- Standardized in PEP 202
- Implemented in Python 2.0 (2000)

        [n*n for n in range(1, 101) if (n*n) % 2 == 1]

# ECMAScript Harmony

# Initial abstract syntax

# Current abstract syntax

# Implementation progress

# Mozilla

# V8

# Other implementations

# Community support

- StackOverflow
    - Multiple threads asking for array comprehensions
    - Or a way to emulate them
- We found a number of blog articles supporting the topic
- V8 issue from 2010 asked for array comprehensions
    - Did not get them
    - It was a non-standard Mozilla feature then

# Community concerns

- Readability
    - Array comps may be unfamiliar to JS programmers
- Compatibility
    - V8 won't implement until ES6 is finalized
    - Mozilla has had array comps for a while, syntax has changed
    - Not well supported yet

# Predictions for the future
