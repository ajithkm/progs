(defun power (x n)
  (if (= n 0)
    1
    (* (power x (- n 1)) x)))

(defun main()
  (princ "Enter the numbers : ")
  (setf a (read))
  (setf b (read))
  (print (power a b)))
(main)
