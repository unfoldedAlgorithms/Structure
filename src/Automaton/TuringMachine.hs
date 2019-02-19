{-# LANGUAGE DatatypeContexts #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE RankNTypes #-}

module TuringMachine
( TuringMachine
, run )
where

import Set

-- Turing Machine
data TuringMachine t_state t_symbol
  = (Eq t_state, Eq t_symbol)
  => TuringMachine
    { states      :: SetFinite t_state
    , alphabet    :: Set t_symbol
    , blank       :: t_symbol
    , input       :: [t_symbol]
    , transitions :: SetFinite ((t_state, t_symbol) -> t_state)
    , start       :: t_symbol
    , finals      :: SetFinite t_state }

run :: TuringMachine -> Bool
run m = error "unimplemented"
