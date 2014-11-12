module ActionView
module Helpers
class FormBuilder
  def fake_password_field
    html = <<-STR
<div class="break_safari_autofill" style="left: -9999px; position: fixed; width: 1px;"><input type="password"></div> <!-- http://stackoverflow.com/a/24471266/641293 -->
    STR
    html.html_safe
  end
end
end
end

module ActionView
module Helpers
module FormTagHelper
  def fake_password_field_tag
    html = <<-STR
<div class="break_safari_autofill" style="left: -9999px; position: fixed; width: 1px;"><input type="password"></div> <!-- http://stackoverflow.com/a/24471266/641293 -->
    STR
    html.html_safe
  end
end
end
end