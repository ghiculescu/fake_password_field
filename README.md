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

Add a `fake_password_field_tag` to the top of your page. Or if you're using a FormBuilder (`form_for(@object)...`), add a `f.fake_password_field`.

### How it works

This inserts a dummy HTML password element, which is hidden from view and will not be posted. But it will trick Safari into not autofilling your actual password field.

You should experiment with the best place in the form to add this element. Usually adding it to the top works well, but some form layouts work best if it's added to the bottom.

The HTML looks like this:

````html
<div class="break_safari_autofill" style="left: -9999px; position: fixed; width: 1px;"><input type="password"></div> <!-- http://stackoverflow.com/a/24471266/641293 -->
````