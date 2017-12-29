class AddPoems < ActiveRecord::Migration[5.1]

  def up
    poems = JSON.parse(File.open('vendor/poems', &:read))

    poems.each do |key, value|
      Poem.create title: key, text: value
    end
  end

  def down
  end
end
