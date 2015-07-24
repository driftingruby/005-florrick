class User < ActiveRecord::Base
  florrick do
    string :first_name, :last_name
    string(:full_name) { "#{first_name} #{last_name}"}
    string(:age) { Date.today.year - birthday.year - (birthday.to_date.change(year: Date.today.year) > Time.now ? 1 : 0)}
  end
end

# {{user.full_name}}
