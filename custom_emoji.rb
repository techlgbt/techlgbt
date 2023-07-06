    CustomEmoji.local.each do |e|
      # hide the mutstd variants
      if e.shortcode =~ /^ms_/ and e.shortcode =~ /_\w\w?\d+$/ then
        e.visible_in_picker = false
        e.save!
      end
    end
