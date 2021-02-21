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

(prinl "Found probably_primes: ")
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
         (mpz_set_str A (format M))
         (when (gt0 (mpz_probab_prime_p A 50))
            (println '@ @ 'N N) ) ) ) )
(msg 'ok)
(bye)
