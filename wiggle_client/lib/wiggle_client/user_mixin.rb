module WiggleClient
  module UserMixin
    def load_remote_wiggle_data
      @remote_wiggle_data ||= WiggleClient::User.find(universal_id)
    end

    def remote_wiggle_data
      raise "You must call load_remote_wiggle_data before accessing remote wiggle data!" unless @remote_wiggle_data
      @remote_wiggle_data
    end

    def favorite_wiggle
      remote_wiggle_data.favorite_wiggle
    end

    def wiggle_opinions
      remote_wiggle_data.wiggle_opinions
    end
  end
end
