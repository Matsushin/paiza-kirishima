require_relative '../kirishima.rb'

describe Kirishima do

  it {
    work_number = 60
    company_number = 3
    company_information = [[40, 4300], [30, 2300], [20, 2400]]
    kirishima = Kirishima.new(work_number, company_number, company_information)
    expect(kirishima.relieve).to eq 6600
  }

  it {
    work_number = 250
    company_number = 5
    company_information = [[35, 3640], [33, 2706], [98, 9810], [57, 5472], [95, 7790]]
    kirishima = Kirishima.new(work_number, company_number, company_information)
    expect(kirishima.relieve).to eq 23072
  }
end