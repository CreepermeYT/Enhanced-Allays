#here
execute unless block ~ ~0.35 ~ #allay_tp:safe run return 0
#forward
execute unless block ~ ~0.35 ~.2 #allay_tp:safe run return 0
#backward
execute unless block ~ ~0.35 ~-.2 #allay_tp:safe run return 0
#left
execute unless block ~.2 ~0.35 ~ #allay_tp:safe run return 0
#right
execute unless block ~-.2 ~0.35 ~ #allay_tp:safe run return 0
return 1