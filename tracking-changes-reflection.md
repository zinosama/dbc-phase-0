## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
Because developers can now try different development approaches in parallel without having to worry about breaking their code base. It also helps developers to collaborate on larger projects, where it's difficult to manage changes made to different files by different developers without version control.   

- What is a commit?
A commit is the saving of all progress to the current point.

- What are the best practices for commit messages?
Specify what and where are changes made to the file.

- What does the HEAD^ argument mean?
It means the last commit.

- What are the 3 stages of a git change and how do you move a file from one stage to the other?
Changes not staged for commit; changes to be committed; untracked files. You add a file to commit by using "git add", and you commit a file by using "git commit".

- Write a handy cheatsheet of the commands you need to commit your changes?
git checkout master
git pull
git checkout -b branch_name
git add
git commit -m "commit message"
git push origin branch_name
git checkout master
git fetch origin master
git merge origin master

- What is a pull request and how do you create and merge one?
A pull request merges your changes into the master branch. You create a pull request by pushing your branch to the origin. You merge a pull request by going onto github and approve the pull request.

- Why are pull requests preferred when working with teams?
Because the code that's submitted can be reviewed by other people before it is merged.
<!-- Add your reflection here. Remove the comment markers -->
