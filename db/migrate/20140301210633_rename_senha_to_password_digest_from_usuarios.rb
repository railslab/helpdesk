class RenameSenhaToPasswordDigestFromUsuarios < ActiveRecord::Migration
  def change
    rename_column :usuarios, :senha, :password_digest
  end
end
