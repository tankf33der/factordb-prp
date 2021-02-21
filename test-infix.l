(load "infix.l")

(test
   111
   (calculate '("(" 2 "+" "(" 3 "*" 3 ")" ")" "*" 11 "/" 11 "+" 100)) )
(test
   22
   (calculate '(10 + 2 * 6)) )
(test
   212
   (calculate '(100 * 2 + 12)) )
(test
   1400
   (calculate '(100 * "(" 2 + 12 ")")) )
(test
   100
   (calculate '(100 * "(" 2 + 12 ")" "/" 14)) )
(test 
   6
   (calculate '(2 + 2 * 2)) )
(test 
   6
   (calculate '(2 + "(" 2 * 2 ")")) )
(test 
   8
   (calculate '("(" 2 + 2 ")" * 2)) )
(test 
   8
   (calculate '(2 * 2 * 2)) )
(test 
   8
   (calculate '("(" 2 * 2 * 2 ")")) )
(test 
   10
   (calculate '(2 * 3 + 4)) )
(test 
   10
   (calculate '("(" 2 * 3 ")" + 4)) )
(test 
   14
   (calculate '(2 * "(" 3 + 4 ")")) )
(test
   39919001
   (calculate '(1 + 22 "*" 100 + 11 "!")) )
(test
   7
   (calculate '(1 + 2 + 3 * 4 "/" "(" 1 + 2 ")")) )

(msg 'infix-ok)
(bye)
