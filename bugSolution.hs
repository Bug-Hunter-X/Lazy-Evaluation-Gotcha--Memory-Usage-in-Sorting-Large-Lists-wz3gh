```haskell
import Data.List (sort)
import Data.Maybe (fromMaybe)

-- Efficiently sorts chunks of the list to avoid memory issues.
chunkSort :: Int -> [a] -> [a]
chunkSort chunkSize xs = concatMap (sort) (chunksOf chunkSize xs)

-- Splits the list into chunks of the given size.
chunksOf :: Int -> [a] -> [[a]]
chunksOf n xs = takeWhile (not.null) (map (take n) (iterate (drop n) xs))

main :: IO ()
main = do
  let xs = [5,1,4,2,3, 6, 8, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
  let ys = chunkSort 5 xs --Adjust chunk size as needed for large lists
  print ys
```