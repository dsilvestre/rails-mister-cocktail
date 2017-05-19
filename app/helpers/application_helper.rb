module ApplicationHelper
  def cocktail_image_path(cocktail)
    if cocktail.photo?
      cl_image_path cocktail.photo, height: 300, width: 400, crop: :fit
    else
      ""
    end
  end
end
