-----------------------------------------------------------------------------------------
-- Module to display dotted numbers like 100.000
-----------------------------------------------------------------------------------------
local M = {}

function M.format(number)
    local loops = string.sub(((string.len(number)/3)), 1, 1)          
    local leadingChars = math.fmod(string.len(number), 3)     
    local reach

    if (leadingChars == 0) then         
        loops = loops - 1           
        reach = 3       
    elseif (leadingChars == 1) then         
        reach = 1       
    elseif (leadingChars == 2) then         
        reach = 2       
    end     
     
    local scoretemp = string.reverse(number)       
    local scorenew = ""       
      
    for  i = 1, loops, 1  do            
        scorenew = scorenew .. (string.sub (scoretemp, ((i*3)-2), i*3) .. ".") 
    end     
 
    scorenew = string.sub(number, 1, reach) .. string.reverse(scorenew)         
    return scorenew 
end

return M