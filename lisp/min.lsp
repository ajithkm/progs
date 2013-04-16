(defun min2 (a b)
	(if (< a b)
		a
		b))

(defun min3 (a b c)
	(min2 ( min2 a b) c))

(defun main()
	(princ "Enter the two numbers : ")
	(setf a (read))
	(setf b (read))
	(setf c (read))
	(print (min3 a b c)))
(main)	
	
