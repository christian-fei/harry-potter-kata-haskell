module Main
where

import Test.Framework
import Test.Framework.Providers.HUnit
import Test.HUnit

main = defaultMain tests

tests = hUnitTestToTests $ TestList $
  [alwaysFails]

alwaysFails =
  True ~?= False
