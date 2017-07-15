#|  hw59
    Jeffrey Weng mcjeffrey168@gmail.com 
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Using recursion to calculate the fibonacci number requested by the caller.
size = the size of the number 

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
the base case, input: 0, output: 0
the value 1, input: 1, output: 1
the value 2, input: 2, output: 1
the value 3, input: 3, output: 2
the value 4: input: 4, output: 3

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Answer: a number


0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
Answer: a number


1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
The recursive sub-call will solve for the fib number for the number - 1 and
the number - 2

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
the recursive sub-call will solve for the fib number for the number - 1 and add
it to the number - 2

2  structure of the base case solution
--------------------------------------
2a.  What is the base case? Start with the problem of size 0.
     If that size has a solution that cannot be considered wrong,
     use that size as the base case. Otherwise, consider the
     next size up until you have an answer.
the base case is 1

2b.  How can you solve the base case for this problem?
return the base case 

end of structuring questions
-------------------------------------------- |# 

; Fibonacci [from question 0a]
(display "Fibonacci") (newline)
(define Fib 
  (lambda (num) ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     number = ") (display num) (newline)
    (newline) 

    (if (> num 2)  ; Choose between base case(s) vs. recursive cases [2a]

        ; solution for recursive cases [1b]
        ; Use a function like +, AND, or OR to combine the results...
        (+
         
         ; ... of handling the additional piece...
         (Fib (- num 1))
         ;end of handling the additional piece

         ; ...with whatever Mr. Brooks does with the sub-problem
         (Fib (- num 2))
         
         )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        1
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (Fib 1))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (Fib 2 ))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (Fib 7))
(display " ...should be 13") (newline) 
(display "-----------------") (newline) (newline)
;--------------------------------------------------------


#|  
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
To find the factorial of a number
size is the size of the number 

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
the base case, input: 0, output: 1
the value 1: input: 1, output: 1
the value 2: input: 2, output: 2
the value 3: input: 3, output: 6

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Answer: the number


0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
Answer: a number


1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
The recursive sub-call will find the factorial of a number - 1.

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
The recursive sub-call will find the factorial of a number - 1, multiplying it
with the original number. 

2  structure of the base case solution
--------------------------------------
2a.  What is the base case? Start with the problem of size 0.
     If that size has a solution that cannot be considered wrong,
     use that size as the base case. Otherwise, consider the
     next size up until you have an answer.
the base case would be 1

2b.  How can you solve the base case for this problem?
return the base case 

end of structuring questions
-------------------------------------------- |# 

; Factorial [from question 0a]
(display "Factorial") (newline)
(define factorial 
  (lambda (num) ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     number = ") (display num) (newline)
    (newline) 

    (if (> num 1)  ; Choose between base case(s) vs. recursive cases [2a]

        ; solution for recursive cases [1b]
        ; Use a function like +, AND, or OR to combine the results...
        (*
         
         ; ... of handling the additional piece...
         num
         ;end of handling the additional piece

         ; ...with whatever Mr. Brooks does with the sub-problem
         (factorial (- num 1))
         
         )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        1
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (factorial 0))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (factorial 2 ))
(display " ...should be 2") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (factorial 6 ))
(display " ...should be 720") (newline) 
(display "-----------------") (newline) (newline)
;--------------------------------------------------------




