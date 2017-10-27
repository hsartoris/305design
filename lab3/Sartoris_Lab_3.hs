-- Hayden Sartoris
-- CMSC 305, Lab 3
-- Due: Thursday October 12, 2017

data BST = Empty | Node Int BST BST
    deriving Show

insert :: Int -> BST -> BST
insert n Empty = Node n Empty Empty
insert n (Node i t1 t2) | n < i = Node i (insert n t1) t2
insert n (Node i t1 t2) | n > i = Node i t1 (insert n t2)
insert n bst = bst

find :: Int -> BST -> Bool
find n Empty = False
find n (Node i t1 t2) = (n == i) || find n t1 || find n t2

findMax :: BST -> Int
findMax Empty = error "Empty tree"
findMax (Node i _ Empty) = i
findMax (Node i _ t) = findMax t

findMin :: BST -> Int
findMin Empty = error "Empty tree"
findMin (Node i Empty _) = i
findMin (Node i t _) = findMin t

delete :: Int -> BST -> BST
delete n b | not (find n b) = error "Not present"
delete _ Empty = error "Empty tree"
delete n (Node i t1 t2) | n < i = Node i (delete n t1) t2
delete n (Node i t1 t2) | n > i = Node i t1 (delete n t2)
delete n (Node _ Empty Empty) = Empty
delete n (Node _ left Empty) = Node (findMax left) (deleteMax left) Empty
delete n (Node _ left right) = Node (findMin right) left (deleteMin right)

deleteMax :: BST -> BST
deleteMax (Node i t1 Empty) = t1
deleteMax (Node i t1 t2) = Node i t1 (deleteMax t2)

deleteMin :: BST -> BST
deleteMin (Node i Empty t2) = t2
deleteMin (Node i t1 t2) = Node i (deleteMin t1) t2

fromInts :: [Int] -> BST
fromInts [] = Empty
fromInts ls = insert (last ls) (fromInts (init ls))

toInts :: BST -> [Int]
toInts Empty = []
toInts (Node i left right) = (toInts left)++(i:(toInts right))
