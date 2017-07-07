module CommentsHelper
  def comments_tree_for(comments)
    comments.map do |comment|
      render(comment) +
      (comment.children.size > 0 ? content_tag(:div, comments_tree_for(comment.children), class: "replies") : nil)
    end.join.html_safe
  end
end

