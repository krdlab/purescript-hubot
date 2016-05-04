module Hubot where

import Prelude (Unit)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)

foreign import data Robot :: *

foreign import data Response :: *

type Regexp =
    { pattern :: String
    , flag    :: String     -- FIXME
    }

foreign import data Send :: !

foreign import respond :: forall e. Robot -> Regexp -> (Response -> Eff (send :: Send, console :: CONSOLE | e) Unit) -> Eff e Unit

foreign import match :: forall e. Response -> Int -> Eff e String

foreign import send :: forall e. Response -> String -> Eff (send :: Send | e) Unit
