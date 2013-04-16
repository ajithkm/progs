(defun average (x y) (/ (+ x y) 2 ))
(defun improve (guess x)
  (average guess (? x guess)))

(defun sqrt-1 (guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-1 (improve guess x) x)))

(defun sqrt (x)
  (sqrt-1 (/ x 2) x))
(defun main()
  (princ "Enter a number")
  (setf a (read))
  (print (sqrt a)))
(main)

