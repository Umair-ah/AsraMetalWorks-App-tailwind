module ApplicationHelper
    def active?(path)
        "bg-rose-300" if current_page?(path)

    end

end
