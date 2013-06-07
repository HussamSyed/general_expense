class RemovePaperclipFieldsFromGenexps < ActiveRecord::Migration
  def change
    remove_column :gen_exps, :receipt_file_name
    remove_column :gen_exps, :receipt_content_type
    remove_column :gen_exps, :receipt_file_size
    remove_column :gen_exps, :receipt_updated_at
  end
end
