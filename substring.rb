DICTYONARY = %w[below down go going horn how howdy it i low own part partner sit].freeze

def substrings(text)
  search = {}
  DICTYONARY.each do |palavra|
    scan = text.downcase.scan(palavra)
    scan.each do |element|
      search[element] = search[element] + 1 unless search[element].nil?
      search[element] = 1 if search[element].nil?
    end
  end
  p search
end

substrings("Howdy partner, sit down! How's it going?")
