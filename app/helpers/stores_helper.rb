module StoresHelper

    def rated?(store)
        if Rating.find_by(store_id: store.id, user_id: current_user.id)
            true
        else
            false
        end
    end

    def rating_score(store)
       @rating = Rating.find_by(store_id: store.id, user_id: current_user.id)
       @rating.score
    end

    def rating(store)
        @rating = Rating.find_by(store_id: store.id, user_id: current_user.id)
     end
end
