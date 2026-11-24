# without vectorization

List1 = [1, 2, 3]
List2 = [4, 5, 6]

result = [x+y for x,y in zip(List1, List2)]
print(result)