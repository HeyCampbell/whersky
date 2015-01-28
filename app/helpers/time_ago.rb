def minutes_in_words(timestamp)
    minutes = (((Time.now - timestamp).abs)/60).round

    return nil if minutes < 0

    case minutes
      when 0..4            then '&lt; 5 minutes'
      when 5..14           then '&lt; 15 minutes'
      when 15..29          then '&lt; 30 minutes'
      when 30..59          then '&gt; 30 minutes'
      when 60..119         then '&gt; 1 hour'
      when 120..239        then '&gt; 2 hours'
      when 240..479        then '&gt; 4 hours'
      when 480..719        then '&gt; 8 hours'
      when 720..1439       then '&gt; 12 hours'
      when 1440..11519     then "#{(minutes/1440).floor} days"
      when 11520..43199    then "#{(minutes/11520).floor} weeks"
      when 43200..525599   then "#{(minutes/43200).floor} month"
      else                      "#{(minutes/525600).floor} years"
    end
  end
