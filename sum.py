sum = 0
i = 1
while True:
    sum = sum + 1/i
    i = i + 1
    if 1/i == 0: 
        break
print(sum)