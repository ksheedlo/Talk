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

$\{n \in \mathbb{N} | m^2 = n, m \in \mathbb{N}, n \leq 10000\}$

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

    ArrayComprehension:
        [Expression ComprehensionForList]
        [Expression ComprehensionForList if (Expression)]
    ComprehensionForList: 
        ComprehensionFor
        ComprehensionForList ComprehensionFor 
    ComprehensionFor:
        for (LeftHandSideExpression of Expression)

# Current abstract syntax

    ArrayComprehension:
        [Comprehension]
    Comprehension:
        ComprehensionQualification AssignmentExpression
    ComprehensionQualification:
        ComprehensionFor ComprehensionQualifierList
    ComprehensionQualifierList:
        ComprehensionQualifier
        ComprehensionQualifierList ComprehensionQualifier
    ComprehensionQualifier:
        ComprehensionFor
        ComprehensionIf
    ComprehensionFor:
        for (ForBinding of AssignmentExpression)
    ComprehensionIf:
        if (AssignmentExpression)
    ForBinding:
        BindingIdentifier
        BindingPattern

# Implementation progress

# Mozilla

- Supports array comprehensions in its SpiderMonkey ECMAScript parsing and execution engine.

# V8

- No current support for array comprehensions
- Dev community stated that new features will not be coming until they are officially accepted in the final version of the ECMAScript specification. 

# Other implementations

- Other EMCAScript engines like Carakan, Chakra, and JavaScriptCore don't have any support for array comprehensions.

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

- A developer with the desire to use array comprehension could feasibly use a higher-level ECMAScript framework to accomplish its functionality, as the higher-level framework could take care of instances where the specific language feature is not yet available in the browser that the code is being executed in.
- Not quite ready for production use due to not being supported in most main-stream web browsers. 
- Not feasibly usable in server-side production code.
