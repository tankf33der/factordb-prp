(de 1op (Op)
   
)
(de consOp (Op)
   (case Op
      ("(" (cons 0 Op))
      (")" (cons 1 Op))
      
   ) )
(de calculate (Lst)
   (let (O NIL  V NIL)
      (for I Lst
         (println 'I I)
         (if (num? I)
            (push 'V I)
         )      
      )
      (println 'O O 'V V)
   )
)

(calculate '(2 "+" 3))

(msg 'ok)
(bye)
