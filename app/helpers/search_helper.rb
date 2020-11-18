module SearchHelper

    def lesser_of_two(num1, num2)
        return num1 if num1 < num2
        num2
    end

    def greater_of_two(num1, num2)
        return num1 if num1 > num2
        num2
    end

    def pagination
        if current_page <= 5
            (1..(lesser_of_two(10, total_pages)))
        elsif current_page > 5 && current_page < (total_pages-4)
            ((current_page-5)..(current_page+4))
        elsif current_page >= (total_pages-5)
            (greater_of_two(1, (total_pages-10))..total_pages)
        end
    end
end