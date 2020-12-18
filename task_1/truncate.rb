module Truncate

# wrote method but don`t know how give here argument 'body' which comes from  test.rb
  def truncate body, l
   
    changed_text = body[0..l[:lenght]].rpartition(" ").first << " ..."
    
    changed_text
  end  

end
