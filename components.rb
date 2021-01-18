def build_web_page (data)

end
def characters(chars)
    char_cards = ''

    chars.each_slice(3) do |char_group|
        char_cards += '<div class="card-deck">'

        char_group.each do |char|
            char_cards += cards(char["Name"], char["Profession"], char["PicUrl"])
    end
    return char_cards +='</div>'
end

def cards(name, prof, img)
   ' 
   <div class="card" style="width: 18rem;">
    <img src="'+img+'" class="card-img-top" alt="'+name+'">
    <div class="card-body">
      <h5 class="card-title">'+ name+'</h5>
      <p class="card-text"'+prof+'.</p>
      <a href="#" class="btn btn-primary">Go somewhere</a>
    </div>
  </div>
  '
end