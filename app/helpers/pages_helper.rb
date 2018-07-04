module PagesHelper
    def rand_id
        @rnumber = rand(Songlist.first.id .. Songlist.last.id)
        @right = false 
        until @right == true
            @right = true
            begin
              Songlist.find(@rnumber)
            rescue
              @rnumber = rand(1..10)
              @right = false
            end
        end
        return @rnumber
    end
    def embed_youtube_url(url)
        if url =~ /www.youtube.com/ 
            @i = url.index("=", 1) +1
            return url[@i..-1]
        elsif url =~ /youtu.be/
            @i = url.rindex("/") +1
            return url[@i..-1]
        else
            return url
        end
    end
end
