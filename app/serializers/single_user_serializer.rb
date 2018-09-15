class SingleUserSerializer < ActiveModel::Serializer
  attributes :id,
             :first_name,
             :last_name,
             :cohort,
             :cohort_id,
             :image_url,
             :email,
             :slack,
             :twitter,
             :linked_in,
             :git_hub,
             :stackoverflow,
             :groups,
             :roles

  def image_url
    url = object.image.url
    root_url = instance_options[:root_url] || ""
    if !url.include?("http") && url.include?("missing.png")
      root_url + url
    else
      url
    end
  end

  def cohort
    object.cohort.name if object.cohort
  end

  def groups
    object.groups.pluck(:name)
  end

  def roles
    object.roles.pluck(:name)
  end

end
