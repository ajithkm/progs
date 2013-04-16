(defun pri(a b)
	(if (> a b) 
	  nil
		(progn 
			(print a)
			(pri (+ a 1) b))))
			
(defun main()
  (princ "Enter a number")
  (setf a (read))
  (setf b (read))	
  (print (pri a b)))
(main)

