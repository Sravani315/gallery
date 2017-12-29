class AddAttachmentToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :attachments, :json
  end
end
