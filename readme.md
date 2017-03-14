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
