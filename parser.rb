class Parser

  def self.parse(file)
    File.readlines(file) .each do |line|
      puts line

    end
  end
end
