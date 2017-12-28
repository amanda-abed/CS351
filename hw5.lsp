(defun ONEFIB (n) (cond ((= n 0)0) ((= n 1)1) ((+ (ONEFIB (- n 1)) (ONEFIB (- n 2))))))

(defun ALLFIB (n) (if (= n 0) '(0) (cons (ONEFIB n)(ALLFIB (- n 1)))))

(defun GETELEM (lst n) (if (null lst) nil (if (= n 1) (car lst) (GETELEM (cdr lst) (- n 1)))))

(defun DELELEM (n lst) (if (> n 1) (cons (car lst) (DELELEM (- n 1)(cdr lst)))(cdr lst)))

(defun MAXIMUM (x) (if (null x) 0 (if (> (car x) (MAXIMUM (cdr x))) (car x) (MAXIMUM (cdr x)))))

(defun COUNTELEMS (x) (if (null x) 0 (+ 1 (COUNTELEMS (cdr x)))))

(defun ISPAL (x) (equal x (reverse x)))

(defun FLAT (x) (cond ((null x)nil) ((atom (car x))(cons (car x)(flat (cdr x)))) ((listp (car x))(append (flat (car x))(flat (cdr x))))))