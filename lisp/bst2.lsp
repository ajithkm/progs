(defstruct node
  (data nil)
  (left nil)
  (right nil))

(defun new(dat)
  (make-node :data dat))

(defun insert (tree d)
  (cond
    ((equal tree nil) (new d))
    ((< d (node-data tree)) (setf (node-left tree) (insert (node-left tree) d))tree)
    ((> d (node-data tree)) (setf (node-right tree) (insert (node-right tree) d))tree)
    (t tree)))

(defun inorder (tree)
  (if (null tree) 
    nil
    (progn
      (inorder (node-left tree))
      (format t "~A " (node-data tree))
      (inorder (node-right tree)))))

(defun delete (tree d)
  (cond
    ((null tree) tree
(defun main()
  (progn
    (setf root nil)
    (loop
      (print "Enter choice : ")
      (setf c (read))
      (cond
	((= c 1) (format t "Enter element : ") (setf root (insert root (read))))
	((= c 2) (format t "Inorder : ")(inorder root))
	)
      )
    )
  )

(main)

