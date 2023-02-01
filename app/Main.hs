module Main where

el :: String -> String -> String
el tag children = "<" <> tag <> ">" <> children <> "</" <> tag <> ">"

html_ :: String -> String
html_ = el "html"

body_ :: String -> String
body_ = el "body"

head_ :: String -> String
head_ = el "head"

title_ :: String -> String
title_ = el "title"

p_ :: String -> Structure
p_ = Structure . el "p"

h1_ :: String -> String
h1_ = el "h1"

append_ :: Structure -> Structure -> Structure
append_ (Structure a) (Structure b) = Structure (a <> b)

render :: Html -> String
render (Html a) = a

wrapHtml :: String -> String
wrapHtml a = "<html><body>" <> a <> "</body></html>"

makeHtml :: String -> String -> String
makeHtml a b = html_ $ (head_ . title_) a <> body_ b

myHtml = makeHtml "My page title" "My page content"

newtype Html = Html String

newtype Structure = Structure String

main :: IO ()
main = do
  putStrLn myHtml
