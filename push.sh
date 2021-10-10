#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

git checkout main

#添加默认的主分支
git branch master				
#合并后的主分支
git branch php					
#主程序
git branch html					
#HTML文件
git branch static				
#图片等静态资源
git push --all

# cat branchs.txt | while read branchs
# cat add.txt | while read add
# cat tar.txt | while read tar

exec 3< "branchs.txt"		#读取一行文件
exec 4< "add.txt"			#读取一行文件
exec 5< "tar.txt"			#读取一行文件

while read branchs<&3 && read add<&4 && read tar<&5

do
#git checkout main
#git branch $branchs

# echo "准备启动"
# sleep 5
# git branch -v
# echo "查看当前分支"
# sleep 5

#tar -xvf  ../$tar
# echo "释放新文件"
# sleep 5

echo $add
echo $branchs
sleep 5

#git branch $branchs && git checkout $branchs && git add $add && git commit -m $branchs && git push -u origin $branchs
git add $add && git commit -m $branchs && git push -u origin main
echo "PUSH完成"
sleep 5

#rm -rf !\(.git|add.txt|branch.sh|branchs.txt|do.sh|init.sh|merge.sh|README.md|tar.txt\)
#rm -rf !(.git|add.txt|branch.sh|branchs.txt|do.sh|init.sh|merge.sh|README.md|tar.txt)
#rm -rf $add

# echo "删除文件完成"
# sleep 5

#git checkout main
# echo "返回主分支"
# sleep 5

# echo "搞定退出"
#sleep 5

done



# exec 3< "branchs.txt"
# exec 4< "add.txt"
# exec 5< "tar.txt"
# while read branchs<&3 && read add<&4 && read tar<&5
# do
# echo $branchs
# echo $add
# echo $tar

# # git checkout main
# #git branch $branchs && git checkout $branchs && git add $add && git commit -m $branchs && git push -u origin $branchs
# #git checkout main
# # git merge  $branchs && 
# #git push main &&
# # git push origin --delete $branchs

# done