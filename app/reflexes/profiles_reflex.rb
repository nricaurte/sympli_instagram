class ProfilesReflex < ApplicationReflex
  def search(query = "")
    return unless query.size > 2
    User.reindex
    @profiles = User.search query
  end
end