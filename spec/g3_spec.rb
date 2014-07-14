require 'rspec'
require 'G3'

challenge_1 = [
  {
    :id=>546,
    :name=>"Kalahari Resorts",
    :city=>"Wisconsin Dells",
    :state=>"Wisconsin",
    :country=>"United States"
  },
  {
    :id=>547,
    :name=>"Little Amerricka",
    :city=>"Marshall",
    :state=>"Wisconsin",
    :country=>"United States"
  }
]

answer_1 = {
  546 => {
    :id=>546,
    :name=>"Kalahari Resorts",
    :city=>"Wisconsin Dells",
    :state=>"Wisconsin",
    :country=>"United States"
  },
  547 => {
    :id=>547,
    :name=>"Little Amerricka",
    :city=>"Marshall",
    :state=>"Wisconsin",
    :country=>"United States"
  }
}

challenge_2 = [
  {
    :id=>546,
    :name=>"Kalahari Resorts",
    :city=>"Wisconsin Dells",
    :state=>"Wisconsin",
    :country=>"United States"
  },
  {
    :id=>547,
    :name=>"Little Amerricka",
    :city=>"Marshall",
    :state=>"Wisconsin",
    :country=>"United States"
  },
  {
    :id=>2,
    :name=>"Calaway Park",
    :city=>"Calgary",
    :state=>"Alberta",
    :country=>"Canada"
  }
]

answer_2 = {
  "Canada" => [
    {
      :id=>2,
      :name=>"Calaway Park",
      :city=>"Calgary",
      :state=>"Alberta",
      :country=>"Canada"
    }
  ],
  "United States" => [
    {
      :id=>546,
      :name=>"Kalahari Resorts",
      :city=>"Wisconsin Dells",
      :state=>"Wisconsin",
      :country=>"United States"
    },
    {
      :id=>547,
      :name=>"Little Amerricka",
      :city=>"Marshall",
      :state=>"Wisconsin",
      :country=>"United States"
    }
  ]
}

describe Geethree do

  it "index_by_id" do
    dollop = Geethree.new(challenge_1)
    expect(dollop.index_by_id).to eq(answer_1)
  end

  it "index_by_country" do
    dollop = Geethree.new(challenge_2)
    expect(dollop.index_by_country).to eq(answer_2)
  end
end

