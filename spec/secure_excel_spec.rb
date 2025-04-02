require 'spec_helper'
require 'secure_excel'

RSpec.describe SecureExcel::Workbook do
  let(:workbook) { SecureExcel::Workbook.new }
  let(:file_name) { 'test.xlsx' }
  let(:password) { 'password' }

  after do
    File.delete(file_name) if File.exist?(file_name)
  end

  describe '#set_password' do
    it 'sets the password for the Excel file' do
      worksheet = workbook.add_worksheet
      workbook.set_password(password)
      workbook.save(file_name)

      expect(File.exist?(file_name)).to be true

      # Verify that the file is password protected
      protected_workbook = SecureExcel::Workbook.new
      expect {
        protected_workbook.add_worksheet(password: password)
        protected_workbook.save(file_name)
      }.to raise_error(Axlsx::Package::Error)
    end
  end

  describe '#remove_password' do
    it 'removes the password from the Excel file' do
      worksheet = workbook.add_worksheet
      workbook.set_password(password)
      workbook.save(file_name)

      expect(File.exist?(file_name)).to be true

      # Remove the password from the file
      workbook.remove_password(file_name)

      # Verify that the file is no longer password protected
      unprotected_workbook = SecureExcel::Workbook.new
      expect {
        unprotected_workbook.add_worksheet
        unprotected_workbook.save(file_name)
      }.not_to raise_error
    end
  end
end
