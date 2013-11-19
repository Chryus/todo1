Organizing Nested Data

I have a collection of Programming Languages.  
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

new_languages = {}
languages.each do |oo_or_func, language_hash|
  #:oo, {:ruby => {...}}
  language_hash.each do |language, type_hash|
    #:ruby => {:type => "interpreted"}
      if new_languages[language].nil?
        #if language doesn't already exist, create language with hash 
        new_languages[language] = {}
      end 
    type_hash.each do |type, str_value|
        #:type => "interpreted"
      #creates a key called style and sets it = to an array filled with oo_or_func
      new_languages[language][:style] = [oo_or_func]
      #creates a key called  type and sets is equal to string value
      new_languages[language][:type] = str_value 
    end
  end
end
ap new_languages

#from hash > hash > hash
#to hash > hash |key, array|
I would like you to reformat the nested structure to be of the following form
new_languages =
{
  :ruby => {
    :style => [:oo],
    :type => "interpreted"
  },
  :python => {
    :style => [:oo],
    :type => "interpreted"
  }
  etc etc
}