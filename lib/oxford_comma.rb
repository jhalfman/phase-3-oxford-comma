def oxford_comma(array)
    new_array = []
    if array.length == 2
        new_array = array.join(" and ")
    elsif array.length > 2
        array.each_with_index do |n, index|
            if index == array.length - 1
                new_array << "and #{n}"
            else
                new_array << n
            end   
        end
        new_array.join(", ")
    else
        new_array = array[0]
    end

end

oxford_comma(["hello", "good evening", "goodbye"])