# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is a way to keep track of changes to a file or set of files. It's very useful for a couple of reasons: first it lets you keep a working copy of your code available while making changes to a separate copy of those files, and second it allows changes to be rolled back very quickly and painlessly.

* What is a branch and why would you use one?
A branch is a copy of the project that you can add or remove features on without changing the working (master) code. You would want to use a branch when adding or removing a feature or making other changes to the code. This is useful because you don't want to change the master code on a project until it is tested and ready for production.

* What is a commit? What makes a good commit message?
A commit is a like a "save state" it is a change that you have made to a file(s) that you want to save and take note of. This is essential because it makes rolling back to previous versions possible. When making commits, messages should be specific and descriptive about what has been changed since the last commit.

* What is a merge conflict?
A merge conflict happens when you create a branch, then change a file in that branch while the original copy of that file also gets changed before you merge. The computer doesn't make any assumptions about which changes are valid and asks for user input of some kind.