module UsersHelper
    def errors(flash)
        message = ""
        if !flash.nil?
        flash.each do |m|
            message = message + "Your #{m[0]} #{m[1][0]}. "
            end
        else
            message = nil
        end
        message
    end
end
