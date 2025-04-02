require 'caxlsx'

module SecureExcel
  class Workbook
    def initialize
      @package = Axlsx::Package.new
      @workbook = @package.workbook
    end

    def add_worksheet(name = 'Sheet1')
      @workbook.add_worksheet(name: name)
    end

    def set_password(password)
      @package.workbook.protect(password)
    end

    def save(file_name)
      @package.serialize(file_name)
    end
  end
end
