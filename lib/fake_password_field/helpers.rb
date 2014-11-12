module ActionView
module Helpers
class FormBuilder
  def fake_password_field(method, options = {})
    text_field_output = text_field(method, options)
    javascript = <<-STR
<script>
// http://stackoverflow.com/q/22817801/641293
var i = document.getElementsByTagName('input'), e = i[i.length - 1]
setTimeout(function() { e.type = 'password' }, 500)
</script>
    STR
    "#{text_field_output} #{javascript}".html_safe
  end
end
end
end

module ActionView
module Helpers
module FormTagHelper
  def fake_password_field_tag(name = "password", value = nil, options = {})
    text_field_output = text_field_tag(name, value, options)
    javascript = <<-STR
<script>
// http://stackoverflow.com/q/22817801/641293
var i = document.getElementsByTagName('input'), e = i[i.length - 1]
setTimeout(function() { e.type = 'password' }, 500)
</script>
    STR
    "#{text_field_output} #{javascript}".html_safe
  end
end
end
end