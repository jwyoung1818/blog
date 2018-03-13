class Blog < ActiveRecord::Base
    def self.retrieve(bid)
        self.where(id: bid).first
    end
end
