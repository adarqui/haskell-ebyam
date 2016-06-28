{-# LANGUAGE ExplicitForAll    #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Data.Ebyam (
  ebyam,
  module A
) where



import           Data.Maybe as A



-- | Takes a `Maybe` value, a default value, and a function. If the `Maybe`
-- | value is `Nothing` the default value is returned, otherwise the function
-- | is applied to the value inside the `Just` and the result is returned.
-- |
-- | ``` purescript
-- | ebyam Nothing x f == x
-- | ebyam (Just y) x f == f y
-- | ```

ebyam :: forall a b. Maybe a -> b -> (a -> b) -> b
ebyam m_a b f = maybe b f m_a
