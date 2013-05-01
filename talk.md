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
- Using them makes code more expressive
- Changes an imperative style to a declarative one
    - Easier to understand
    - Fewer bugs

# History

- Inspired by set-builder notation
- Implemented in many functional languages
    - Typically as *list comprehensions*
    - Examples: Haskell, Miranda
- Python has them
    - Major influence on ES6 syntax

# Example problem

- Find all odd squares less than 10,000. 
- How can we go about this?
    - Using the smallest JS program
    - No bugs

# Set-builder notation

$\{n \in \mathbb{N} | m^2 = n, m \in \mathbb{N}, n \leq 10000\}$

- Note how $m$ and $n$ are *drawn from sets*
- Array comprehensions emulate this behavior

# In different languages

- Miranda (1985)

        [n*n | n <- [1..100]; n*n mod 2 = 1]

- Haskell (1991)

        [n*n | n <- [1..100], n*n `mod` 2 == 1]

- Python (2000)

        [n*n for n in range(1, 101) if (n*n) % 2 == 1]

# JavaScript, before array comps

    var xs = (function () {
      var rs = [], i = 1;
      for (; i <= 100; i++) { rs.push(i); }
      return rs;
    })();
    var res = [];
    for (var i = 0; i < xs.length; i++) {
      var n = xs[i];
      if (n*n % 2 == 1) {
        res.push(n*n);
      }
    }
    return res;

# JavaScript, with array comps

    var xs = (function () {
      var rs = [], i = 1;
      for (; i <= 100; i++) { rs.push(i); }
      return rs;
    })();
    return [n*n for (n of xs) if (n*n % 2 == 1)];

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

- Little progress towards implementation in a variety of JavasSript engines
- Not presently widely usable in production
- Identical functionality can be accomplished using a utility framework such as Underscore.js

# Mozilla

- Has supported array comprehensions since Firefox 2
- Originally used a different syntax
- ES6 array comprehensions have been implemented
    - Recent SpiderMonkey and Firefox support our syntax

# V8

- No current support for array comprehensions
- Waiting on final version of ES6 spec
- Will not implement non-standard Mozilla features

# Other implementations

- Implementations that don't currently support it
    - Carakan (Opera)
    - Chakra (IE9)
    - JavaScriptCore (Safari)
- Not publicly known whether upcoming IE will support it

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

# Conclusion

- Array comprehensions increase expressiveness
    - Map, filter, Cartesian product in one expression
- Useful, but not widely deployable due to limited support

# Sources
- https://code.google.com/p/v8/issues/detail?id=890
- http://stackoverflow.com/questions/14511954/array-comprehensions-in-nodejs
- https://developer.mozilla.org/en-US/docs/JavaScript/New_in_JavaScript/1.7
- http://stackoverflow.com/questions/11479418/array-comprehension-in-javascript
- http://stackoverflow.com/questions/4964456/make-javascript-do-list-comprehension
