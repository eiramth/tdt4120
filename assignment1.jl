function insertionsort!(arr)
    for j in 2:length(arr)
        key = arr[j]
        i = j-1
        while i>0 && arr[i]>key
            arr[i+1] = arr[i]
            i = i-1
        arr[i+1] = key
        end
    end
end

A = [2, 6, 4, 1, 9]

insertionsort!(A)


println(A)
