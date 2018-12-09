;; ex. 2.12

(define (make-interval a b) (cons a b))
(define (upper-bound interval) (max ((car interval) (cdr interval))))
(define (lower-bound interval) (min ((car interval) (cdr interval))))

(define (make-center-percent c p)
  (make-interval (- c (* c p)) (+ c (* c p))))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (percent i)
  (- (/ (upper-bound i) (center i)) 1))


(percent (make-center-percent 5 0.2))  
