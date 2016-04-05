require 'json'
require_relative 'stop_words'
class Machine

  def initialize(words)
    @blob = words
  end

  def sanitize_blob
    @blob.gsub(/[,!?().]/, '')

  end

  def count_each_word
    stop_words =StopWords::LIST
    words = sanitize_blob.split(" ").map(&:downcase).delete_if{ |x| stop_words.include?(x) }
    words.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }.sort_by(&:last).to_h.to_json
  end
end

m = Machine.new("fdshfdsfds hello hi hi hi hi no no no a the hi yes")
puts m.count_each_word
