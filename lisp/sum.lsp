(defun sum(a b)
	(if (> a b)
		0
		(+ a (sum (+ a 1) b)))) 
			
(defun main()
  (princ "Enter a number")
  (setf a (read))
  (setf b (read))	
  (print (sum a b)))
(main)

