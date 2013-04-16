(defun dispnum(x)
  (mod x 10))

(defun rev-num (a)
  (if (= a 0)
    nil
    (progn 
      (princ (dispnum a))
      (setf k (mod a 10)) 
      (setf y (- a k))
      (rev-num (/ y 10)))))
