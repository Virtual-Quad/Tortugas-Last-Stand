# Game
Repository for hosting the Godot project for Tortuga's Last Stand.

# Project Set-up
1. Download Godot 4.2.1 for your pc from the [Godot home page](https://github.com/godotengine/godot/releases).
2. Install git from the [Git website](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
3. Open a terminal (I use [Hyper](https://hyper.is/) but you can use the normal command line) in the folder you would like to store the repository in.
4. Clone the project repository with `git clone https://github.com/Virtual-Quad/Tortugas-Last-Stand.git`
5. Import the project in Godot by pressing import, then navigating to where you cloned the repository, then clicking on the `project.godot` file in the `Tortugas-Last-Stand` folder.

# Contributing
1. Ensure your branches are up-to-date.
2. Choose a task that you are interested in, assign yourself, and move it to in-progress.
3. Open a terminal in the `Tortugas-Last-Stand` folder.
4. Read up on the Git Basics section below or ask questions if you are unfamiliar with Git.
5. Branch off of main, and create a new branch in this format: `feature/IssueNumber-Issue_Name_or_Description` or `leaf/IssueNumber-Issue_Name_or_Description`
6. Example: `feature/A1.1-Character_Movement` or `leaf/A1.1-Character_Movement`
7. Do NOT use `dev/` as a pre-fix for your branch name.
8. Checkout to your newly created branch, work on your branch, and when you finish the task, open a pull request and get two approvals, and mention the issue number in your pull request.
9. When you receive two approvals, squash and merge your pull request, and put the Github issue # of your task in the front of the merge message.

# Getting Help
1. Do not be afraid to ask questions.
2. Read the [Godot Documentation](https://docs.godotengine.org/en/stable/index.html) for references.
3. Look up how other people have solved your problem or similar problems with Godot.

# Git Basics
- Use `git branch example-branch-name` to make a new branch.
- Use `git checkout example-branch-name` to switch to a different branch.
- To do the branch and checkout commands in one line, do `git checkout -b example-branch-name`.
- Use `git add .` to add all your changes to be committed.
- Use `git commit -m "Your message here"` to make a commit and add a message along with it. (Any time you make a decent amount of changes, you should commit it with a descriptive message).
- Use `git push` to push your changes to your current branch.
- When you finish your task, open up a pull request to merge your changes into main.
- From here, get at least one approval, make any necessary changes, and squash and merge your changes, and place the issue number for the task you worked on in front of the merge message.
- Once merged, delete the branch, and close your issue.

# Testing with GUT
- This project will have unit testing using the [GUT framework](https://gut.readthedocs.io/en/latest/Quick-Start.html).
- I would recommend trying to write unit tests for applicable code (but that doesn't mean you have to write one for every single function)!
- For some examples and tips, I would suggest reading some comments from this [reddit post](https://www.reddit.com/r/godot/comments/xbzx3g/the_godot_unit_testing_gut_library_is_pretty_good/).
- A general idea would be you would write your test first to fail, then write your code to pass that test, then refactor the code to be better while still passing.
