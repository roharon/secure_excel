# secure_excel

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'secure_excel'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install secure_excel

## Usage

To use the `secure_excel` gem, you need to require it in your Ruby script:

```ruby
require 'secure_excel'
```

### Setting a Password for an Excel File

To set a password for an Excel file, use the `set_password` method provided by the `secure_excel` gem. Here's an example:

```ruby
require 'secure_excel'

# Create a new Excel workbook
workbook = SecureExcel::Workbook.new

# Add a worksheet to the workbook
worksheet = workbook.add_worksheet

# Add some data to the worksheet
worksheet.add_row ['Name', 'Age']
worksheet.add_row ['Alice', 30]
worksheet.add_row ['Bob', 25]

# Set a password for the Excel file
workbook.set_password('your_password')

# Save the Excel file
workbook.save('example.xlsx')
```

In this example, we create a new Excel workbook, add a worksheet, add some data to the worksheet, set a password for the Excel file, and save the file as `example.xlsx`.

### Removing a Password from an Existing Excel File

To remove the password from an existing Excel file, use the `remove_password` method provided by the `secure_excel` gem. Here's an example:

```ruby
require 'secure_excel'

# Create a new Excel workbook
workbook = SecureExcel::Workbook.new

# Remove the password from the existing Excel file
workbook.remove_password('example.xlsx')
```

In this example, we create a new Excel workbook and remove the password from the existing Excel file `example.xlsx`.

### Using the Console

To use the console file, run the following command:

    $ bin/console

This will load the environment and start an IRB session with the `secure_excel` gem loaded. You can then interact with the gem in the console.
