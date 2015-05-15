require 'spreadsheet'

class ExcelDataReader
  def initialize workbook_name = File.dirname(__FILE__) + '/test_data.xls'
    @workbook_name = workbook_name
  end

  def get_sheet(sheet_name = 'data')
    book = Spreadsheet.open(@workbook_name)
    data_sheet = book.worksheet(sheet_name)# can use an index or worksheet name
  end

  def get_excel_array(sheet_name = 'data')
    sheet = get_sheet(sheet_name)
    sheet_array = Array.new
    row1 = sheet.row(0)
    for cell in sheet.to_a
      sheet_array = sheet_array.push({row1[0] => cell[0], row1[1] => cell[1], row1[2] => cell[2],row1[3] => cell[3]})
    end
    sheet_array.shift
    sheet_array
  end


end
