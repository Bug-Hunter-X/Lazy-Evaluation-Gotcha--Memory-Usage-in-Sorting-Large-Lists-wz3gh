```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys
```
This code is fine but suppose that the list `xs` was very large.  The `sort` function has O(n log n) complexity. If the list was large enough this code could easily take a very long time and potentially use up all the memory.