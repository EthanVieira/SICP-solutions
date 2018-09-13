;; SICP Ex. 1.23

(define (next input)
  (if (= input 2)
    3
    (+ input 2)))

(define (smallest-divisor n)
(find-divisor n 2))

(define (find-divisor n test-divisor)
(cond ((> (square test-divisor) n) n)
      ((divides? test-divisor n) test-divisor)
      (else (find-divisor n (next test-divisor)))))

(define (divides? a b)
(= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time) n)
      false))

(define (report-prime elapsed-time n)
  (newline)
  (display n)
  (display " *** ")
  (display elapsed-time))
  (newline)

;; They all run faster than 1 ms.

(timed-prime-test 1009)
(timed-prime-test 1013)
(timed-prime-test 1019)
(timed-prime-test 10007)
(timed-prime-test 10009)
(timed-prime-test 10037)
(timed-prime-test 100003)
(timed-prime-test 100019)
(timed-prime-test 100043)
(timed-prime-test 1000003)
(timed-prime-test 1000033)
(timed-prime-test 1000037)
