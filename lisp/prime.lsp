(defun prime (x)
  (if (= (smalldiv x 2) x)
  	(princ "Prime")
	(princ "Not Prime")))

(defun smalldiv (a b)
  (if (= (mod a b) 0)
     b  
    (smalldiv a (+ b 1))))

	
(defun main()
  (princ "Enter a number")
  (setf a (read))
  (prime  a))
(main)

