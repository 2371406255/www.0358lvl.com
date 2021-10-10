#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
#cat list.txt | while read line && cat add.txt | while read add

#while read  list.txt line && read add.txt add

#cat  list.txt add.txt  | while  read  add
exec 3< "branchs.txt"
exec 4< "add.txt"
exec 5< "tar.txt"
while read branchs<&3 && read add<&4 && read tar<&5
do
echo $branchs
echo $add
echo $tar

# git checkout main
#git branch $branchs && git checkout $branchs && git add $add && git commit -m $branchs && git push -u origin $branchs
#git checkout main
# git merge  $branchs && 
#git push main &&
# git push origin --delete $branchs

done



# 1 #!/bin/bash
# 2 exec 3<"1.txt"
# 3 exec 4<"2.txt"
# 4 while read line1<&3 && read line2<&4
# 5 do
# 6         echo $line1 $line2
# 7 done