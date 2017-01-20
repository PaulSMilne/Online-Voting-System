require_relative "../db/sql_runner.rb"
require_relative "./Pub.rb"

class Vote

    attr_reader :id
    attr_accessor :vote_id

    def initialize(options)
        @id = options['id'].to_i
        @vote_id = options['vote_id'].to_i
    end

    def save()
        sql = "INSERT INTO votes (vote_id) VALUES (#{@vote_id}) RETURNING *"
        vote_data = SqlRunner.run(sql)
        @id = vote_data.first['id'].to_i
    end

    def self.delete_all()
        sql="DELETE FROM votes"
        SqlRunner.run(sql)
    end

    def self.gather #gathers the votes from the votes table and assembles them into a table.
        sql = "SELECT vote_id FROM votes"
        votes = SqlRunner.run(sql)
        total_votes = votes.values.flatten
        #.inject run on an array: creates a new hash set do 0, looks through the list of elements, for each one makes a hash where a unique element is the key, and the value is incremented, then saves the hash so it doesn't reset to 0 each time.
        tally = total_votes.inject(Hash.new(0)) do |hash,element|
            hash[element] += 1
            hash
        end
        new_tally = tally.to_a
        # works up to here
        names_array = Array.new
        count_array = Array.new
        new_tally.each do |ballot|
            pub = Pub.find(ballot[0])
            names_array << pub.name
            count_array << ballot[1]
        end
        final_tally = names_array.zip(count_array)
        final_tally_list = final_tally.sort_by {|element| element[1]}
        return final_tally_list.reverse
    end

    def pub_name
        sql="SELECT name FROM pubs WHERE id = #{something}"
        name = SqlRunner.run(sql)
        return name
    end



end
