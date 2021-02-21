(load "infix.l")
# XXX, remove unused
(load "libgmp.l")

# in place
(in "prp.txt"
   (until (eol)
      (println (read))
      (wait 1000)
   )

)

(msg 'ok)
(bye)
