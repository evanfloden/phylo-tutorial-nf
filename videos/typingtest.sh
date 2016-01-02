!#/usr/bash
clear
echo -n "bash-4.1$ "
sleep 10

echo "java -version" | pv -qL 10
java -version 2>&1
echo -n "bash-4.1$ "
sleep 8
clear

echo -n "bash-4.1$ "
echo -e "cd ~/bin" | pv -qL 10
cd ~/bin 2>&1
echo -n "bash-4.1$ "
sleep 8
clear

echo -n "bash-4.1$ "
echo "curl -fsSL get.nextflow.io | bash" | pv -qL 10
curl -fsSL get.nextflow.io | bash 2>&1
echo -n "bash-4.1$ "
sleep 8
clear

echo -n "bash-4.1$ "
echo 'PATH=$PATH:~/bin' | pv -qL 10
PATH=$PATH:~/bin
echo -n "bash-4.1$ "
sleep 8

clear
echo -n "bash-4.1$ "
echo "./nextflow run hello" | pv -qL 10
./nextflow run hello 2>&1
echo -n "bash-4.1$ "
sleep 8
clear


echo -n "bash-4.1$ "
echo "cd ~/projects" | pv -qL 10
cd ~/projects
echo -n "bash-4.1$ "
sleep 8
clear

echo -n "bash-4.1$ "
echo "git clone cbcrg/phylo-tutorial-nf" | pv -qL 10
git clone cbcrg/phylo-tutorial-nf
echo -n "bash-4.1$ "
sleep 8
clear

echo -n "bash-4.1$ "
echo "cd phylo-tutorial-nf" | pv -qL 10
cd phylo-tutorial-nf
echo -n "bash-4.1$ "
sleep 8
clear

echo -n "bash-4.1$ "
echo "ls -l" | pv -qL 10
ls -l
echo -n "bash-4.1$ "
sleep 8
clear



