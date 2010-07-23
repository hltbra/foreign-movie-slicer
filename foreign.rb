require 'time'

palavra = ARGV[0]

def time_to_sec(t)
    t = Time.parse(t)
    t.hour * 3600 + t.min * 60 + t.sec
end

f = File::open('s.srt')

falas = []

f.each_line { |line|
    next if line =~ /^\s*$/
    if line =~ /(.*) --> (.*)/
        falas << [time_to_sec($1), time_to_sec($2)]
        fala_atual = ""
        while (fala = f.readline)
            break if fala =~ /^\s*$/
            fala_atual += " #{fala.strip}"
        end
        falas.last << fala_atual
    end
}

f.close

falas.each { |fala|
#    puts fala.inspect
    if fala[2].downcase.include? palavra.downcase
        puts fala[2]
        puts "vlc -f --play-and-exit --start-time=#{fala[0]} --stop-time=#{fala[1]} #{ARGV[1]}" # EXECUTA
        `vlc -f --play-and-exit --start-time=#{fala[0]} --stop-time=#{fala[1]} #{ARGV[1]}` # EXECUTA
        break
    end
}
#puts falas.inspect
