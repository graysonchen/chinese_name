# frozen_string_literal: true

require 'chinese_name/version'

class ChineseName
  LAST_NAME_DATA = 'last_name.dat'

  attr_reader :full_name, :first_name, :last_name

  class << self
    def generate
      new
    end
    alias g generate
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
    @last_name ||= generate_last_name
  end

  alias to_s full_name

  private

  def generate_first_name
    Random.rand(1..2).times.inject([]) { |arr, _val| arr << generate_word }
  end

  def generate_word
    word = Random.rand(19_968..40_869)
    [word.to_s(16)].pack('H*').force_encoding('utf-16be').encode('utf-8')
  end

  def generate_last_name
    rand_name = all_last_name
    rand_name[Random.rand(rand_name.size)]
  end

  def all_last_name
    IO.foreach(file_data).inject([]) { |arr, line| arr << line.strip }
  end

  def file_data
    return ENV['LAST_NAME_FILE'] if ENV['LAST_NAME_FILE']
    File.dirname(__FILE__) + "/../data/#{LAST_NAME_DATA}"
  end
end
