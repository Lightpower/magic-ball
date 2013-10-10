class Question < ActiveRecord::Base
  validates_presence_of :text, :answer
end