--������ 3
--����������� �� ����� Haskell �������, ��������� �� ��������� ������ �������� � ������� ��������

myeven [el] = [el]
myeven [first, second] = [first]
myeven (h:t) = h : myeven (tail t)

--myeven [1, 2, 3] -- [1,3]
--myeven [1, 2, 3, 4] -- [1,3]