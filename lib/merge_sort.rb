def merge_sort (arr, result = [])
  return arr if arr.one?
  split = arr.each_slice((arr.size / 2.0).round).to_a
  left = merge_sort(split[0], result)
  right = merge_sort(split[1], result)
  compare = [left, right]
  result = []
  while compare.flatten.any? do
    if compare.select(&:any?).one?
      result << compare.flatten
      compare.clear
    else
      if compare[0][0] < compare[1][0]
        result << compare[0].shift
      else
        result << compare[1].shift
      end
    end
  end
  result.flatten!
end

p merge_sort([145, 165, 127, 89, 60, 247, 0, 2, 170, 213, 58, 34, 108, 63, 6, 72]) == [145, 165, 127, 89, 60, 247, 0, 2, 170, 213, 58, 34, 108, 63, 6, 72].sort