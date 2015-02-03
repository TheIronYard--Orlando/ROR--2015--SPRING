class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
    # this is not fancy, but it gets the job done
    100.times do |n|
      User.create(name: "User #{n}", email: "user_#{n}@example.org")
    end
  end
end
