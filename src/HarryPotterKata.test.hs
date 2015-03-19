module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit

import HarryPotterKata

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  [noBookCosts0Euro, oneBookCosts8Euro]

noBookCosts0Euro =
  priceForBooks [] ~?= 0.0

oneBookCosts8Euro =
  priceForBooks [1] ~?= 8.0
