module Natural where

data Natural = O | S Natural deriving (Eq, Show)

type N = Natural
toN = toEnum :: Int -> N

instance Enum Natural where
  succ n     = S n
  pred n     = case n of { O -> O; (S n) -> n }
  toEnum i   = if i <= 0 then O else S (toEnum $ i - 1)
  fromEnum n = case n of { O -> 0; (S n) -> 1 + fromEnum n }
  enumFrom n = n : enumFrom (S n)
  
  enumFromThen   = error "unimplemented"
  enumFromTo     = error "unimplemented"
  enumFromThenTo = error "unimplemented"

instance Ord Natural where
  compare n m = case (n, m) of
    (S n, S m) -> compare n m
    (O  , S m) -> LT
    (O  , O  ) -> EQ
    (S n, O  ) -> GT
  
  n <  m = case (compare n m) of { LT -> True ; EQ -> False; GT -> False }
  n <= m = case (compare n m) of { LT -> True ; EQ -> True ; GT -> False }
  n >  m = case (compare n m) of { LT -> False; EQ -> False; GT -> True  }
  n >= m = case (compare n m) of { LT -> True ; EQ -> True ; GT -> True  }
  
  max n m = case compare n m of { LT -> m; EQ -> m; GT -> n }
  min m n = case compare n m of { LT -> m; EQ -> m; GT -> n }
