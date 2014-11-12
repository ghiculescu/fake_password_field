## FakePasswordField

Prevents Safari from autofilling password fields you don't want autofilled. See http://stackoverflow.com/questions/22817801/how-to-disable-auto-fill-in-safari-7 for a good explanation of the bug.

Tested on Rails 4. (Probably works on other versions too, if anyone is keen to test & update the gem's dependencies.)

### Installing

Add this line to your application's Gemfile:

    gem 'fake_password_field'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fake_password_field

Available on RubyGems: https://rubygems.org/gems/fake_password_field

### Usage

In your views, replace `password_field_tag` with `fake_password_field_tag`. Or if you're using a FormBuilder (`form_for(@object)...`), replace `f.password_field` with `f.fake_password_field`.

All other parameters should be the same - you shouldn't need to change anything else in your view code. Please create an issue if that isn't the case.

### How it works

The gem will render a text field (`<input type=text>`) with the same markup as your password field. Directly below, it inserts a snippet of Javascript that will convert this text field to a password field after the page has loaded and Safari's autofiller has finished running.

The snippet looks like this:

````javascript
<script>
// http://stackoverflow.com/q/22817801/641293
var i = document.getElementByTagName('input'), e = i[i.length - 1]
setTimeout(function() { e.type = 'password' }, 500)
</script>
````

### Shortfalls

If you have a default value in the password field, that value will flash briefly before being replaced by the password field dots. Generally it's not considered a good practice to include the user's password (or indeed, any password) in your HTML. But if you really need to, you should try one of the other workarounds suggested at http://stackoverflow.com/questions/22817801/how-to-disable-auto-fill-in-safari-7 or elsewhere, instead of this gem.