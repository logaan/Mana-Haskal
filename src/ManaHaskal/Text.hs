module ManaHaskal.Text
where

import ManaHaskal.List

type Line = String
type Paragraph = [Line]

paragraphs :: [Line] -> [Paragraph]
paragraphs = splitNull
