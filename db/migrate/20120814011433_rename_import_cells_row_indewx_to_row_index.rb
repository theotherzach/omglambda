class RenameImportCellsRowIndewxToRowIndex < ActiveRecord::Migration
  def up
    rename_column :import_cells, :row_indwx, :row_index
  end

  def down
    rename_column :import_cells, :row_index, :row_indwx
  end
end
