(defun rep-add(x n)
  (if (= n 0)
    0
    (+ x (rep-add x (- n 1)))))

(defun main()
  (setf a (read))
  (setf b (read))
  (print (rep-add a b)))

(main)
