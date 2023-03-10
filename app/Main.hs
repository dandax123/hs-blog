module Main where

import Html

main :: IO ()
main = do
  putStrLn $ render myhtml

myhtml :: Html
myhtml =
  html_
    "My title"
    ( append_
        (h1_ "Heading")
        ( append_
            (p_ "Paragraph #1")
            ( ul_
                [ p_ "item 1",
                  p_ "item 2",
                  p_ "item 3"
                ]
            )
        )
    )