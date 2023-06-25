-- Bad way of writing a calcChange
-- Is bad since we calculate the "subtract function" twice.
-- A more expensive function would make it even worse to compute
calcChangeBad owed given = if owed - given > 0
                        then owed - given
                        else 0

-- A more optimal calcChange
calcChange owed given = if change > 0
                        then change
                        else 0
    where change = owed - given


--Q2.3
isEven x =  if modul == 0
            then x-2
            else 3*x+1
    where modul = mod x 2