\version "2.19.82"
fun =
#(define-music-function (opts) (list?)
   (let ((a (assoc-get 'a opts "Foo Default A"))
         (b (assoc-get 'b opts "Foo Default B"))
         (c (assoc-get 'c opts "Foo Default C")))
     #{
       \relative c'{
         \mark $a
         d2 e
         f g
         \mark $b
         e1
         c2 d~
         \mark $c
         d1~
         d
       }
     #}))

%% A lilypond way of setting an alist:
myOpts."a" = "Foo A"
myOpts."c" = "Foo C"
% #(display myOpts) % = Simple Alist

\fun \myOpts