require_relative "../db/sql_runner.rb"

class Pub

    attr_reader :id
    attr_accessor :name, :postcode, :registered


    def initialize(options)
        @id = options['id'].to_i
        @name = options['name']
        @postcode = options['postcode']
        @registered = options['registered']
    end

    def register
        # @registered = true
        sql = "UPDATE pubs set registered = TRUE
        WHERE id = #{@id}"
        SqlRunner.run(sql)
    end

    def save()
        sql="INSERT INTO pubs (name, postcode, registered) VALUES ('#{@name}', '#{@postcode}', '#{@registered}') RETURNING *;"
        pub_data = SqlRunner.run(sql)
        @id = pub_data.first['id'].to_i
    end

    def update(options)
        sql="UPDATE pubs SET 
            name='#{options['name']}', 
            postcode='#{options['postcode']}', 
            registered='#{options['registered']}'  
            WHERE id = #{@id}
            "
        SqlRunner.run(sql)
    end

    def self.all()
        sql="SELECT * FROM pubs ORDER BY name"
        pubs=SqlRunner.run(sql)
        result = pubs.map {|pub| Pub.new(pub)}
        return result
    end

    def self.unreg
        sql="SELECT * FROM pubs WHERE registered = 'f' ORDER BY name"
        pubs = SqlRunner.run(sql)
        result = pubs.map {|pub| Pub.new(pub)}
        return result
    end

   def self.find(id)
        sql = "SELECT * FROM pubs WHERE id = #{id}"
        pub = SqlRunner.run(sql)
        result = Pub.new(pub.first)
        return result
    end

    def self.delete_all()
        sql="DELETE FROM pubs"
        SqlRunner.run(sql)
    end

    def self.destroy(id)
        sql = "DELETE FROM pubs WHERE id = #{id}"
        SqlRunner.run(sql)
    end

#Helper methods for mapping

    # def self.map_items(sql)
        
    # end

end

