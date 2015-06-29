namespace :dev do
		task :fake => :environment do

			User.destroy_all
			Event.destroy_all
			Comment.destroy_all

			20.times do |index|
				User.create(:id=>index+1, 
												:name => Faker::Name.name,
												:password=>'qwerty1234',
												:email => Faker::Internet.email
												)
			end



			100.times do |index|
				e = Event.create(
										 :name=>Faker::Lorem.sentence,
										 :content=>Faker::Lorem.sentence,
										 :user_id=>Random.rand(10)+1
										 )


				Random.rand(10) do |index|
					Comment.create(:cotent=>Faker::Lorem.sentence,
												:user_id=>Random.rand(20)+1,
												:event_id=> e)

				end

		end

	end
end


