"""
You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
Column   Type
N        Integer
P        Integer
Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.
Sample Input
N   P
7   2
3   2
6   8
9   8 
2   5
8   5
5  null
"""
#The code
select N,
case 
when P is null then 'Root'
when N in( select distinct P from BST) then 'Inner'
else 'Leaf'
end 
as node_type
from BST
order by N asc;





