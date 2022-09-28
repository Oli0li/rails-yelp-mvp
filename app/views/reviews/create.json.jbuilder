# if @review is saved
if @review.persisted?
  # send back a new form users can fill
  json.my_form render(partial: "reviews/form", formats: :html, locals: { restaurant: @restaurant, review: Review.new })
  # send back the review we want to insert in the page
  json.my_inserted_item render(partial: "restaurants/review", formats: :html, locals: { review: @review })
else
  # send back the form with validation error messages
  json.my_form render(partial: "reviews/form", formats: :html, locals: { restaurant: @restaurant, review: @review })
end
