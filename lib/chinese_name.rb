require "chinese_name/version"

class ChineseName
  LAST_NAME_DATA = 'last_name.dat'.freeze

  attr_reader :full_name, :first_name, :last_name

  class << self
    def generate
      new
    end
    alias_method :g, :generate
  end

  def initialize
    full_name
    self
  end

  def full_name
    @full_name ||= "#{last_name}#{first_name}"
  end

  def first_name
    @first_name ||= generate_first_name.join
  end

  def last_name
    @last_name ||= all_last_name[Random.rand(all_last_name.size)]
  end

  alias_method :to_s, :full_name

  private
  attr_writer :all_last_name

  def generate_first_name
    Random.rand(1..2).times.inject([]) { |arr, val| arr << generate_word }
  end

  def generate_word
    word = (19968..20901).to_a.sample
    [word.to_s(16)].pack('H*').force_encoding('utf-16be').encode('utf-8')
  end

  def all_last_name
    filedata = File.dirname(__FILE__) + "/../data/#{LAST_NAME_DATA}"
    IO.foreach(filedata).inject([]){ |arr, line| arr << line.strip }
  end
end
