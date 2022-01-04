function sample_rng(start::Int, en::Int; len=0, replace=false)::Vector{Int}
  if start > en
    error(string("Start ", start, " > End ", en))
  end
  if replace == false && len > (en-start)
    error(string("Return length larger than range of input ", (en-start) ," < ", en))
  end
  vec = collect(start:en)
  indx = collect(1:length(vec))
  rep = (en - start)+1
  if len > rep
    rep = len
  end

  rtn = []

  for _ in 1:rep
    n = length(indx)
    i = rand(1:n)
    push!(rtn, vec[indx[i]])
    if replace==false
      deleteat!(indx, i)
    end
  end
  rtn
end
