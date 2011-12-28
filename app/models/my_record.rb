class MyRecord < AWS::Record::Base
  string_attr :name
  validates_presence_of :name
end
