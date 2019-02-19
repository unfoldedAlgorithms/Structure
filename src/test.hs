-- {-# LANGUAGE DatatypeContexts #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE RankNTypes #-}

data X =
  let x = Int
  in X x

-- data X a b = (Eq a, Eq b) => X a b
