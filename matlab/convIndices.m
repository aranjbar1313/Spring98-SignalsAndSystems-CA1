function indices = convIndices(na, nb)
    indices = na(1) + nb(1) : na(end) + nb(end);
end