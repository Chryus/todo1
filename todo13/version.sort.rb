# # Version Sort
# * from rubeque http://www.rubeque.com/problems/version-sort * 

# ## Objectives: 

# Implement the version_sort method

# ### Inspiration: 

# http://www.gnu.org/software/coreutils/manual/html_node/More-details-about-version-sort.html

# ## Skills: 
# reg exp, split, sort, each

# ## Instructions:

# The version sort takes into account the fact that file names frequently include indices or version numbers. Standard sorting functions usually do not produce the ordering that people expect because comparisons are made on a character-by-character basis. The version sort addresses this problem, and is especially useful when browsing directories that contain many files with indices/version numbers in their names:

#      $ ls -1            $ ls -1v
#      foo.zml-1.gz       foo.zml-1.gz
#      foo.zml-100.gz     foo.zml-2.gz
#      foo.zml-12.gz      foo.zml-6.gz
#      foo.zml-13.gz      foo.zml-12.gz
#      foo.zml-2.gz       foo.zml-13.gz
#      foo.zml-25.gz      foo.zml-25.gz
#      foo.zml-6.gz       foo.zml-100.gz


# ## Code:

# Version-sorted strings are compared such that if ver1 and ver2 are version numbers and prefix and suffix (suffix matching the regular expression ‘(\.[A-Za-z~][A-Za-z0-9~]*)*’) are strings then ver1 < ver2 implies that the name composed of “prefix ver1 suffix” sorts before “prefix ver2 suffix”.

# Note also that leading zeros of numeric parts are ignored:

#      $ ls -1            $ ls -1v
#      abc-1.007.tgz      abc-1.01a.tgz
#      abc-1.012b.tgz     abc-1.007.tgz
#      abc-1.01a.tgz      abc-1.012b.tgz
require ('awesome_print')

# class Array 

#   attr_accessor :filenames

#   def initialize(filenames)
#     @filenames = filenames
#   end

filnames = [
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.3.ext",
  "foo-1.50.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.ext",
  "foo-10.1.ext",
  "foo-10.ext",
  "foo-100.ext",
  "foo-13.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.0.ext",
  "foo-2.007.ext",
  "foo-2.01.ext",
  "foo-2.012b.ext",
  "foo-2.01a.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.1.ext",
  "foo-25.ext",
  "foo-6.ext",
]
version_sorted_filenames = [
  "foo-1.ext",
  "foo-1.3.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.50.ext",
  "foo-2.0.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.01.ext",
  "foo-2.1.ext",
  "foo-2.01a.ext",
  "foo-2.007.ext",
  "foo-2.012b.ext",
  "foo-6.ext",
  "foo-10.ext",
  "foo-10.1.ext",
  "foo-13.ext",
  "foo-25.ext",
  "foo-100.ext",
]

  # def version_sort(array)
  #we want to compare the file names
    array.each do |filename|
      array.split("'").each do |word|
        ap word
      end
    # filename(\.[A-Za-z~][A-Za-z0-9~]*)*’) <=> filename(\.[A-Za-z~][A-Za-z0-9~]*)*’)
    end
#   end

# end



# filenames = Array.new(filenames)
# ap filenames.version_sort(filenames)



 #assert_equal filenames.version_sort, version_sorted_filenames
