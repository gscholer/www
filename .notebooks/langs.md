## Racket

```racket
> (list? '(1 2))
#t

> (list? (cons 1 (cons 2 '())))
#t

> (list? (cons 1 2))
#f
```


## Code
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/ast.rkt#L2-L5
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/ast.rkt#L11-L24

The pattern syntax:
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/ast.rkt#L44-L52



https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/a86/ast.rkt#L313-L322

https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L15-L18
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L29-L34

## Compile Match

https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L55-L58
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L75
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L204-L213

The compiled value of expression `e` is stored in `rax`:
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L207-L209

`compile-match-clauses` match `rax` with each pattern `p` until matched and value of expression `e` will be the value of `Match` expression:
https://github.com/gscholer/www/blob/4c73f488dabcef384fe9a3fcb8d803923d4499c8/langs/knock-plus/compile.rkt#L214-L221

The value of being matched has been stored in stack and move to `rax` register at the begining:
https://github.com/gscholer/www/blob/4c73f488dabcef384fe9a3fcb8d803923d4499c8/langs/knock-plus/compile.rkt#L222-L233


---

The compiled values are stored into `rax` register:
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L77-L81

variables are stored stack and their name are in `CEnv`, which is a list of id:
https://github.com/gscholer/www/blob/4c73f488dabcef384fe9a3fcb8d803923d4499c8/langs/knock-plus/compile.rkt#L55
https://github.com/gscholer/www/blob/4c73f488dabcef384fe9a3fcb8d803923d4499c8/langs/knock-plus/compile.rkt#L82-L86
