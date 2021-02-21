(de fact (N)
   (if (=0 N)
      1
      (* N (fact (dec N))) ) )
# Calculate value(s) based on stack top Operand
# Modifies both V and O
(de 1op (Op)
   
)
(de consOp (Op)
   (case Op
      (("+" "-") (cons 1 Op))
      (("*" "/") (cons 2 Op))
      (("\^" "!") (cons 3 Op)) ) )
(de calculate (Lst)
   (let (O NIL  V NIL)
      (for I Lst
         (println 'I I)
         (cond
            ((num? I) (push 'V I))
            ((= "(" I) (push 'V T))
            ((= ")" I)
               (while (nT (car O)) (op1))
               (++ V) )
            (T
               (let CurrOp (consOp I)
                  (println 'CurrOp CurrOp)
                  (while (and O (>= (caar O) (car CurrOp)))
                     (op1) )
                  (push 'V CurrOp) ) )
         ) # cond
      )
      (println 'O O 'V V)
   )
)

(calculate '(2 "+" 3))

(msg 'ok)
(bye)
