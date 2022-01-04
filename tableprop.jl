function tableprop(data::Vector)
  uniq = unique(data)
  res = [sum(data .=== i) for i in uniq]
  try
    DataFrame(data=uniq, count=res, prop=res/sum(res))
  catch
    hcat(uniq, res, res/sum(res))
  end
end
