import numpy as np

arr_2d = np.array([[11, 22, 33],
                   [44, 55, 66]])


new_arr_2d = np.delete(arr_2d, 0, axis= 0)
print(new_arr_2d)