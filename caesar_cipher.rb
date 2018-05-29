class CaesarCipher
  attr_accessor :text, :shift 
  
  def initialize(text, shift=13)
    @text = text
    @shift = shift
  end
  
  # 65 - 90 UPPERCASE
  # 97 - 122 lowercase
  
  def perform
    ret_txt = []
    text_ = @text.split("")
    shift = @shift
    text_.each do |txt|
      
      txt_ord = txt.ord 
      
      if txt_ord >= 65 && txt_ord <= 90 
        ord_st = 65
        ord_end = 90
        
        txt_ord = change_ord(txt_ord, ord_st, ord_end)
      elsif txt_ord >= 97 && txt_ord <= 122 
        ord_st = 97
        ord_end = 122
        
        txt_ord = change_ord(txt_ord, ord_st, ord_end)
      end
      
      ret_txt.push(txt_ord.chr)
       
    end
    
    ret = ret_txt.join

    return ret
  end  

  def change_ord(txt_ord, ord_st, ord_end)
    shift = @shift 
   
    if shift > 0
      if txt_ord + shift >= ord_end 
        shift2 = (txt_ord + shift) - ord_end
        txt_ord = ord_st + shift2 - 1
      else
        txt_ord = txt_ord + shift
      end
    else
      if txt_ord + shift <= ord_st
        shift2 = ord_st - (txt_ord + shift) 
        txt_ord = ord_end - shift2 + 1 
      else
        txt_ord = txt_ord + shift
      end
    end
    return txt_ord
  end
end

