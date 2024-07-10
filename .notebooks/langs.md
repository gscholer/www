## Racket

```racket
> (list? '(1 2))
#t

> (list? (cons 1 (cons 2 '())))
#t

> (list? (cons 1 2))
#f
```

## Helper functions

`seq`:
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/a86/ast.rkt#L313-L322

## Registers

`rbx` is the heap pointer:
https://github.com/gscholer/www/blob/a16519e274f0e948ff4e14bc851ba640928f7e3b/langs/knock-plus/compile-ops.rkt#L7-L14
https://github.com/gscholer/www/blob/a16519e274f0e948ff4e14bc851ba640928f7e3b/langs/knock-plus/compile.rkt#L24-L27

## Compiler

The abstract syntax tree:
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/ast.rkt#L2-L5

The expression syntax:
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/ast.rkt#L11-L24

The pattern syntax:
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/ast.rkt#L44-L52

https://github.com/gscholer/www/blob/a16519e274f0e948ff4e14bc851ba640928f7e3b/langs/knock-plus/compile-ops.rkt#L71-L78

There are two kinds of `compile`: `compile-e` and `compile-define`
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L15-L18
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L29-L34

https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L55-L58
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L75
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L204-L213

The compiled value of expression `e` is stored in `rax`:
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L207-L209

`compile-match-clauses` match `rax` with each pattern `p` until matched and value of expression `e` will be the value of `Match` expression:
https://github.com/gscholer/www/blob/4c73f488dabcef384fe9a3fcb8d803923d4499c8/langs/knock-plus/compile.rkt#L214-L221

The value of being matched has been stored in stack and move to `rax` register at the begining:
https://github.com/gscholer/www/blob/4c73f488dabcef384fe9a3fcb8d803923d4499c8/langs/knock-plus/compile.rkt#L222-L233

https://github.com/gscholer/www/blob/a16519e274f0e948ff4e14bc851ba640928f7e3b/langs/knock-plus/compile-ops.rkt#L310-L316

https://github.com/gscholer/www/blob/a16519e274f0e948ff4e14bc851ba640928f7e3b/langs/knock-plus/types.rkt#L7

---

The compiled values are stored into `rax` register:
https://github.com/gscholer/www/blob/10235ac81f7e903284facc77678476543f9529f4/langs/knock-plus/compile.rkt#L77-L81

variables are stored stack and their name are in `CEnv`, which is a list of id:
https://github.com/gscholer/www/blob/4c73f488dabcef384fe9a3fcb8d803923d4499c8/langs/knock-plus/compile.rkt#L55
https://github.com/gscholer/www/blob/4c73f488dabcef384fe9a3fcb8d803923d4499c8/langs/knock-plus/compile.rkt#L82-L86

`compile-define` add a label in asm, how to lookup if a label has been defined?
https://github.com/gscholer/www/blob/6ca7dfba3eaf5b891d13bcd61d66276757164aa0/langs/knock-plus/compile.rkt#L46-L53
