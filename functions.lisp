;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;  FUNCTIONS  ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;This file has all the general
;;;functions for the RPG game.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;UI functions;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun n-empty-rows (n)
  "Insert n empty rows with (terpri)"
  (loop repeat n do
       (terpri)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;Basic functions;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun x+1 (xy-loc)
  "Add 1 to x coordinate"
  (cons (+ (car xy-loc) 1) (cdr xy-loc)))

(defun x-1 (xy-loc)
  "Subtract 1 from x coordinate"
  (cons (- (car xy-loc) 1) (cdr xy-loc)))

(defun y+1 (xy-loc)
  "Add 1 to y coordinate"
  (cons (car xy-loc) (+ (cdr xy-loc) 1)))

(defun y-1 (xy-loc)
  "Subtract 1 from y coordinate"
  (cons (car xy-loc) (- (cdr xy-loc) 1)))

(defun negative-loc-p (xy-loc)
  "True if X or Y is negative"
  (or (minusp (car xy-loc)) (minusp (cdr xy-loc))))

(defun xmax ()
  "Max value of X coordinate"
  (- *mapdim* 1))

(defun ymax ()
  "Max value of Y coordinate"
  (- *mapdim* 1))

(defun same-loc-p (xy-loc1 xy-loc2)
  "Return true if two locations are the same"
  (and
   (equal (car xy-loc1) (car xy-loc2))
   (equal (cdr xy-loc1) (cdr xy-loc2))))

(defun append2 (list element)
  "Apply an element to a list"
  (if (null list)
      (setq list (cons element nil))
      (setq list (cons element list))))