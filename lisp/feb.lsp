(defun febonacci (a b n)
  (if (= n 0)
    nil
    (progn (princ a) (febonacci b (+ a b) (- n 1)))))


	
(defun main()
  (princ "Enter a number")
  (setf a (read))
  (print (febonacci 0 1 a)))
(main)

