module Set
( Set
, SetFinite )
where

type Set a = (a -> Bool)

type SetFinite a = [a]
