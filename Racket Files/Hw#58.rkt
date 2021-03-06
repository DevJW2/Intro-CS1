#|  hw58
    Jeffrey Weng mcjeffrey168@gmail.com
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
Calculates the number of moves required to solve the Towers of Hanoi puzzle for
a given number of disks.
size = number of disks 

0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
The base case
one disk should return one move
two disks should return three moves
three disks should return seven moves

0c. What information do you have to be told?
    That is, what information has to be supplied as parameters?
Answer: amount of disks


0d. What is the structure of the answer you will produce?
    That is, what will your function produce?
    A number? An integer? A Boolean? A list?
Answer: a number 


1   structure of the recursive solution
---------------------------------------
1a. What problem can Mr. Brooks solve? Use your answers to 0a 
    to describe the same problem, except smaller in size,
    according to your meaning for "size".
The recursive sub-call will solve the amount of moves it takes for disk - 1

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
The recursive sub-call will solve the amount of moves it takes for disk-1
and adding 1 to it. 

2  structure of the base case solution
--------------------------------------
2a.  What is the base case? Start with the problem of size 0.
     If that size has a solution that cannot be considered wrong,
     use that size as the base case. Otherwise, consider the
     next size up until you have an answer.
The base case would be 0 

2b.  How can you solve the base case for this problem?
return the base case 

end of structuring questions
-------------------------------------------- |# 

; Return the amount of moves for a given amount of disks  [from question 0a]
(display "Towers of Hanoi Disks-Moves") (newline)
(define ToH_moves
  (lambda (disks) ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     disks = ") (display disks) (newline)
    (newline) 

    (if (> disks 0)  ; Choose between base case(s) vs. recursive cases [2a]

        ; solution for recursive cases [1b]
        ; Use a function like +, AND, or OR to combine the results...
        (+ 
         
         ; ... of handling the additional piece...
         1
         ;end of handling the additional piece

         ; ...with whatever Mr. Brooks does with the sub-problem
         (* (ToH_moves (- disks 1)) 2)
         
         )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        0
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (ToH_moves 0))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (ToH_moves 1 ))
(display " ...should be 1") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (ToH_moves 5))
(display " ...should be 31") (newline) 
(display "-----------------") (newline) (newline)
;--------------------------------------------------------



#|  
--------------------------------------------
Structuring questions for recursive problems
0  structure of the problem
---------------------------
0a. What problem are you asked to solve?
    and What does "size" mean in the context of that problem?
A not negative integer inputa that returns the sum of the squares of the integers
between 0 and the given answer. 
size = the number
0b. What samples will test the procedure and what answers are
    required? You must know the expected answers, and tests
    should be the smallest useful ones.
the base case: 0
the value 2: 5
the value 3: 14 

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
The recursive sub-call will solve the sum of the squares of the numbers in
the given number - 1

1b. What sub-problem will you ask Mr. Brooks to solve? and
    How will you use Mr. Brooks's answer to construct your own?
The recursive sub-call will solve the sum of the squares of the numbers in the
given number - 1 plus the first number squared. 

2  structure of the base case solution
--------------------------------------
2a.  What is the base case? Start with the problem of size 0.
     If that size has a solution that cannot be considered wrong,
     use that size as the base case. Otherwise, consider the
     next size up until you have an answer.
the base case is 0

2b.  How can you solve the base case for this problem?
the base case would be returned 

end of structuring questions
-------------------------------------------- |# 

; A Factorial that squares the number and adds them instead of multiplying [from question 0a]
(display "Sum of Squares between the numbers 0 and the given number") (newline)
(define sumOfSquares  
  (lambda (num) ; parameters [0c]
    
    ; show the parameter value(s), for debugging
    (display "     number = ") (display num) (newline)
    (newline) 

    (if (> num 0)  ; Choose between base case(s) vs. recursive cases [2a]

        ; solution for recursive cases [1b]
        ; Use a function like +, AND, or OR to combine the results...
        (+
         
         ; ... of handling the additional piece...
         (expt num 2)
         ;end of handling the additional piece

         ; ...with whatever Mr. Brooks does with the sub-problem
         (sumOfSquares (- num 1))
         
         )  ; end of "solution for recursive cases"

        ; solution for base case [2b]
        0
        
        )  ;end of "Choose between base case(s) vs. recursive cases"
    )) ; end of lambda and define

; tests  [0b]
;base case(s)
(display (sumOfSquares 0))
(display " ...should be 0") (newline)
(display "-----------------") (newline) (newline)

; simple recursive case(s)
(display (sumOfSquares 2))
(display " ...should be 5") (newline)
(display "-----------------") (newline) (newline)

; cases requiring multiple recursive calls
(display (sumOfSquares 4 ))
(display " ...should be 30") (newline) 
(display "-----------------") (newline) (newline)
;--------------------------------------------------------


