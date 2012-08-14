class CsvController < ApplicationController
  require 'csv'
  def import
  end

  def upload
    table = ImportTable.new :original_path => params[:upload][:csv].original_filename
    row_index = 0
    CSV.parse(params[:upload][:csv].read) do |cells|
      column_index = 0
      cells.each do |cell|
        table.import_cells.build :column_index => column_index, :row_index => row_index, :contents => cell
        column_index += 1
      end
      row_index += 1
    end
    table.save
    import_table_path(table)
    render :text => params.to_json 
  end
end
