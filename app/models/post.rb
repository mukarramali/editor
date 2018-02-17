class Post < ApplicationRecord

  after_commit { PostBroadcastJob.perform_later(self) }

end
