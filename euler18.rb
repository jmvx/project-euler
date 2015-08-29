array =
[75,
95, 64,
17, 47, 82,
18, 35, 87, 10,
20, 4, 82, 47, 65,
19, 1, 23, 75, 3, 34,
88, 2, 77, 73, 7, 63, 67,
99, 65, 4, 28, 6, 16, 70, 92,
41, 41, 26, 56, 83, 40, 80, 70, 33,
41, 48, 72, 33, 47, 32, 37, 16, 94, 29,
53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14,
70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57,
91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48,
63, 66, 4, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31,
4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23]

copy = array.dup

row = 0 # triangle row number
num_in_row = 1 # num of integers in current row (increases by 1 each time)
count = 0 # keep track of the number of integers you've visited in the row
max = 0
current_row = {}
array.each_with_index do |x, parenti|
  # child1 = row_num + parent_index + 1
  # child2 = row_num + parent_index + 2
  child1 = row + parenti + 1
  child2 = row + parenti + 2
  # if there are no child nodes, then you're done!
  if !array[child1] and !array[child2]
    break
  end
  # add child to parent (if child node has not been changed yet)
  if array[child1] == copy[child1]
    array[child1] = array[parenti] + array[child1]
  else
    # if child node has been changed by another parent
    # compare new value to previous (take max)
    array[child1] = [array[parenti] + copy[child1], array[child1]].max
  end
  
  # add child to parent (if child node has not been changed yet)
  if array[child2] == copy[child2]
    array[child2] = array[parenti] + array[child2]
  else
    # if child node has been changed by another parent
    # compare new value to previous (take max)
    array[child2] = [array[parenti] + copy[child2], array[child2]].max
  end
  
  # store row hash (i'm sure this is not the best idea)
  current_row[child1] = array[child1]
  current_row[child2] = array[child2]
  
  # reached the end of the row!
  count += 1
  if count == num_in_row
    puts current_row.max_by{|k,v| v}
    num_in_row += 1
    row += 1
    count = 0
    current_row.clear
  end
end