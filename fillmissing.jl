function fillmissing(vect; direction=:up)
  if direction == :up
    start = first(vect[ismissing.(vect).==0])
    [if(ismissing(vect[i])) start else start=vect[i]; vect[i] end for i in 1:length(vect)]
  else
    start = last(vect[ismissing.(vect).==0])
    collect(Iterators.Reverse([if(ismissing(vect[i])) start else start=vect[i]; vect[i] end for i in reverse(1:length(vect))]))
  end
end
