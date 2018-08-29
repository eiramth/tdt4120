mutable struct Record
    next::Union{Record, Nothing}
    value::Int
end

function createlinkedlist(length, valuerange)
    next = nothing
    record = nothing
    for i in l:length
        record = Record(next, rand(valuerange))
        next = record
    end
    return record
end

function traversemax(record)
    maxvalue = 0
    while record.next != nothing
        if record.value > maxvalue
            maxvalue = record.value
        end
        record = record.next
    end
    return maxvalue
end
