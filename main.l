(load "infix.l")
# XXX, remove unused
(load "libgmp.l")

# in place
(in "prp.txt"
   (for M 5
      (let Lst
         (make
            (until (eol)
               (if (num? (format (peek)))
                  (link (read))
                  (link (char))
               )
            )
         (line)
         )
         (println 'full Lst)
      )
   )
)

(msg 'ok)
(bye)
