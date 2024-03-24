def parse_invoices(invoice_data)

  pattern = /(\d{4}-\d{2}-\d{2}) - ([A-Za-z0-9]+) - ([\w\s]+) - \$(\d+(\.\d{2})?)/

  # Split the invoice into differnt line
  invoice_data.each_line do |line|
    match_data = line.match(pattern)

    if match_data
      # indivcuals data
      date = match_data[1]
      invoice_number = match_data[2]
      client_name = match_data[3]
      amount = match_data[4]

      puts "Date: #{date} Invoice Number: #{invoice_number} Client Name: #{client_name} Amount: $#{amount}"
    else
      puts "Invalid invoice entry: #{line}"
    end
  end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
