;;; SICP Ex. 1.8

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
  (if (good-enough? guess)
          guess
          (sqrt-iter (improve guess x)
                      x)))
