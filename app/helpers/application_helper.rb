module ApplicationHelper
    def active?(path)
        if current_page?(path)
            "bg-rose-300"
        else
            "bg-white"
        end

    end

    def nav?(path)
        if current_page?(path)
            "rounded-full text-white bg-rose-500"
        else
            ""
        end

    end

end
