module WiggleClient
  class User
    attr_accessor :universal_id, :favorite_wiggle, :wiggle_opinions

    def self.find(uid)
      CommunityService.find(:wiggle, :user, uid)  # or something, maybe just `include CommunityService::ClientModel`
    end
  end
end
