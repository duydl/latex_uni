import numpy as np
def pulzevier(a,b):
    ls = [[1,0],[0,1]]
    while b > 0:
        ls.append([1, -(a // b)]) 
        temp = b
        b = a % b
        a = temp
    ls = np.array(ls[:-1])  
    # print(ls)
    for i in range(2,len(ls)):
        # print("multo", np.array([ls[i-2], ls[i-1]]).T, ls[i])
        ls[i] = np.array([ls[i-2], ls[i-1]]).T.dot(np.array(ls[i]))
        # print("res", ls[i])
    print(ls)
    return(ls[-1])
pulzevier(259,70)

        