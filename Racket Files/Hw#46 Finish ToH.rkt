;Jeffrey Weng
;mcjeffrey168@gmail.com
;Hw#45

(define (ToH disks source target spare)
  (display "disks: ")
  (display disks) (newline)
  (display "source: ")
  (display source) (newline)
  (display "target: ")
  (display target) (newline)
  (display "spare: ")
  (display spare) (newline) (newline)
  ;basecase
  (if (= disks 1)
      (string-append "Move top disk from " source " to " target)
      (string-append (ToH (- disks 1) source spare target) "\n"
                     "Move the top disk from the " source " to " target "\n"
                     (ToH (- disks 1) spare target source) "\n"
                     )
      )
  )

(display (ToH 1 "De Nang" "Hanoi" "HCMC")) (newline)
(display "...should be Move Top Disk from De Nang to Hanoi")
(newline) 
(display "----------------------------------------------------") (newline)

(display (ToH 2 "De Nang" "Hanoi" "HCMC")) (newline)
(display "...should be Move Top disk from De Nang to HCMC,
then move top disk from De Nang to Hanoi, then move top disk from HCMC to Hanoi. ")
(newline)