module Main where

import Prelude (Unit, return, unit, ($), bind, (++))
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (log)

import Hubot (Robot, respond, match, send)

hubot :: forall e. Robot -> Eff e Unit
hubot robot = do
    respond robot {pattern: "test (\\w+)$", flag: "i"} $ \res -> do
        send res "ok!"
        m <- match res 1
        log $ "debug: " ++ m
    return unit

main :: forall e. Eff e Unit
main = return unit
