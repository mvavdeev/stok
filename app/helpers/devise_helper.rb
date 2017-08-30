module DeviseHelper

  def flash_class_name(name)
    case name
      when 'notice' then 'success'
      when 'alert'  then 'danger'
      else name
    end
  end

    def devise_error_messages!
      return '' if resource.errors.empty?

      messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
      html = <<-HTML
    <div class="alert alert-error alert-danger"> <button type="button"
    class="close" data-dismiss="alert">x</button>
      #{messages}
    </div>
      HTML

      html.html_safe
    end

end