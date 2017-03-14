## Nulltella

Null obj active record localization hook.

```ruby
class SuperCoolClass < ActiveRecord::Base
  nulltella :date

  # would dynamically define
  def date
    self[:date] || Nullitize.new(self, __method__)
  end
end
```


```ruby
# en.yml
# ...
en
  model:
    super_cool_class:
      date:
        nulls: this text is dateless
```

In a view calling `l @obj.date` would now render the null class text when 'date' is nil.
