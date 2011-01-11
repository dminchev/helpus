module ApplicationHelper
  POST_SAFE_TAGS = %w(h1 h2 h3 p a img br em strong)
  
  # types: success, error, notice
  def show_flash
    haml_tag :div, :id => "flash" do
      flash.each do |type, message|
        unless message.blank?
          haml_tag :div, message, :class => "alert #{type}"
        end
      end
    end
  end
  
  def sanitize_post(text)
    sanitize(simple_format(text, :sanitize => false), :tags => POST_SAFE_TAGS)
  end
end
