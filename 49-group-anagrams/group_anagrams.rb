# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  out = Hash.new { |h, k| h[k] = [] }
  strs.each { |s| out[s.chars.sort.join] << s }
  out.values
end
