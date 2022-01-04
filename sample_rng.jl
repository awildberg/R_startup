function sample_rng(start::Int, en::Int; replace=false)
  vec = collect(start:en)
  indx = collect(1:length(vec))
  rtn = []

  for _ in vec
    n = length(indx)
    i = rand(1:n)
    push!(rtn, vec[indx[i]])
    if replace==false
      deleteat!(indx, i)
    end
  end
  rtn
end
