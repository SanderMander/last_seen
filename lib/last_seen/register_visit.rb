module LastSeen
  class RegisterVisit

    def initialize(user, auth)
      @user = user
      @auth = auth
    end

    def record_visit
      activity.update_attribute(:visits_count, activity.visits_count + 1)
    end

    def invalidate_device
      Activity.where(
        user_id: @user.id,
        last_seen_token: token
      ).update_all(archived: true)
      @auth.cookies.delete 'last_seen_token'
    end

    private

      def activity
        @activity ||= begin
          Activity.find_or_create_by(last_seen_token: token, user_id: @user.id, archived: false)
        end
      end

      def token
        @token ||= begin
          @auth.cookies['last_seen_token'] ||
          Digest::MD5.hexdigest(@auth.env['HTTP_USER_AGENT'] + @auth.env['REMOTE_ADDR'])
        end
      end

  end
end
