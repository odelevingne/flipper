class Flip

	include DataMapper::Resource

	property :id, 					Serial
	property :content, 			Text
	property :created_at, 	String

end