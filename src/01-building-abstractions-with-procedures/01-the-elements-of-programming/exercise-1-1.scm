
; replace <ans> with the value that will make all the expressions return True

; I need to define an assert method - if false, say in a human readable way what as expected and what the answer was

; TODO(ope): move this to a common
(define (assert-equal expected given)
    (if (eq? given expected)
        (begin
            (display "pass: ")
            (display expected)
            (display " equals ")
            (display given)
            (newline)
        )
        (begin
            (display "ASSERTION FAILURE: ")
            (display "was given ")
            (display given)
            (display " but expected ")
            (display expected)
            (newline)
        )
    )
)


; replace 0 with the correct value
(assert-equal 10 '())
(assert-equal (+ 5 3 4) 0)
(assert-equal (- 9 1) 0)
(assert-equal (/ 6 2) 0)
(assert-equal (+ (* 2 4) (- 4 6)) 0)

(define a 3)
(assert-equal a 3)

(define b (+ a 1))
(assert-equal b 4)

(assert-equal (+ a b (* a b)) 0)
(assert-equal (= a b) 0)
