module HarryPotterKata (
  priceForBooks
  )
where

priceForBooks :: [Int] -> Float
priceForBooks books = priceForBooksRecursive books 0.0

priceForBooksRecursive :: [Int] -> Float -> Float
priceForBooksRecursive [] acc = acc
priceForBooksRecursive (book:rest) acc = priceForBooksRecursive rest (acc + 8.0)
