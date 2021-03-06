module TestProblem1to10 where

import Test.Framework
import Test.Framework.Providers.HUnit

import Test.HUnit as Hunit

import Problems1to10

import System.Exit

shouldTestMylast =
        [
          TestCase  ( assertEqual "should return the actual last item" (Just 4) ( myLast [1,2,3,4])),
          TestCase  ( assertEqual "should return Nothing when given empty list" (Nothing) ( myLast ([]::[Int])))
         ]

shouldTestMyButlast =
        [
          TestCase  ( assertEqual "should return the actual but one item" (Just 3) ( myButLast [1,2,3,4])),
          TestCase  ( assertEqual "should return Nothing when given empty list" (Nothing) ( myButLast ([]::[Int])))
         ]

shouldTestElementAt =
        [
          TestCase  ( assertEqual "should return the actual element at" 2 ( elementAt [1,2,7,1] 2)),
          TestCase  ( assertEqual "should return the actual element at" 9 ( elementAt [1,7,1,9] 4))
         ]

shouldTestmyLength =
        [
          TestCase  ( assertEqual "should return the actual lenght of the array" 4 ( myLength [1,2,7,1])),
          TestCase  ( assertEqual "should return 0 for empty array" 0 ( myLength []))
         ]

shouldTestmyReverse =
        [
          TestCase  ( assertEqual "should reverse the  array" ([1,7,2,1]) ( myReverse [1,2,7,1])),
          TestCase  ( assertEqual "should return revesre of array" ("edcba") ( myReverse "abcde")),
          TestCase  ( assertEqual "should return empty array for empty array" ([]) ( myReverse ([]::[Int])))
         ]

shouldTestisPalindrome =
        [
          TestCase  ( assertEqual "should return true for a palindrom array" True ( isPalindrome [1,2,2,1])),
          TestCase  ( assertEqual "should return revesre of array" True ( isPalindrome "abcba")),
          TestCase  ( assertEqual "should reverse the  array" False ( isPalindrome [1,3,2,1])),
          TestCase  ( assertEqual "should return revesre of array" False ( isPalindrome "abcde")),
          TestCase  ( assertEqual "should return empty array for empty array" True ( isPalindrome ([]::[Int])))
         ]

shouldTestflatten =
        [
          TestCase  ( assertEqual "should return true for a palindrom array" [1,2,3,4,5] ( flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])))
         ]

shouldTestcompress =
        [
          TestCase  ( assertEqual "should compress the array" "abce" ( compress "aaabbccabeee" )),
          TestCase  ( assertEqual "should compress the array" [] ( compress ([]::[Int]) ))
         ]

shouldTestpack =
        [
          TestCase  ( assertEqual "should pack the array" ["aaa","bb","c","ee"] ( pack "aaabbccabeee" )),
          TestCase  ( assertEqual "should pack an empty array" [] ( pack ([]::[Int]) ))
         ]

shouldTestEncode =
        [
          TestCase  ( assertEqual "should pack the array" [(5,'a'),(3,'b'),(2,'c'),(3,'e')] (encode "aaabbccabeeea" )),
          TestCase  ( assertEqual "should pack an empty array" [] ( encode ([]::[Int]) ))
         ]

testProblem1to10 = shouldTestMylast ++ shouldTestMyButlast ++ shouldTestElementAt ++
                   shouldTestmyLength ++ shouldTestmyReverse ++ shouldTestisPalindrome ++
                   shouldTestflatten ++ shouldTestcompress ++ shouldTestpack ++ shouldTestEncode ++
                   shouldTestEncode

