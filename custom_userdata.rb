Ohai.plugin(:CustomUserdata) do
  provides "customUserdata"
  depends "ec2"

  collect_data do
    customUserdata Mash.new
    get_userdata ec2[:userdata].split("\n")
    gl = get_userdata.length
    g = 0
    loop do
        if get_userdata[g].include?("ohai")
            process_info get_userdata[g].split("|")
            pl = process_info.length
            p = 1
            loop do
              set_info  process_info[p].split("=")
              customUserdata[set_info[0].rstrip] = set_info[1].rstrip
              p +=1
              if p == pl
                break
              end
            end
        end
        g +=1
        if  g == gl
            break
        end
    end
  end
end
