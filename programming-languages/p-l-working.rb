require 'awesome_print'

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
      new_languages[language][:style] = [oo_or_func]
      new_languages[language][:type] = str_value 
    end
  end
end
ap new_languages


