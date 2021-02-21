(load "infix.l")
(load "libgmp.l")

(de number ()
   (format
      (make
         (link (char))
         (while (num? (format (peek)))
            (link (char)) ) ) ) )

# libgmp
(setq A (mpz_create))
(mpz_init A)

(prin "Found NOT probably_primes: ")
(flush)

(setq Total 0  C 0)
# in place
(in "prp.txt"
   (until (eof)
      (let
         (Lst
            (make
               (until (eol)
                  (if (num? (format (peek)))
                     (link (number))
                     (link (char)) ) )
               (line) )
            N (calc Lst)
            Odd? (bit? 1 N) )
         # All numbers evaluated must be odd, right?
         ~(assert (=1 Odd?))
         (inc 'Total)
         (mpz_set_str A (format N))
         (when (> 1 (mpz_probab_prime_p A 1))
            (inc 'C) ) ) ) )
(prinl C " of total " Total)

(msg 'ok)
(bye)
