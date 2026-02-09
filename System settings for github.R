
system("git remote set-url origin https://github.com/zbo-labs/zbo_labs.git")
system("git remote add origin https://github.com/zbo-labs/zbo_labs.git")
system("git remote -v")

git remote set-url origin git@github.com:YOUR_FIRST_ACCOUNT/YOUR_REPO1.git


system("git push -u origin main")

# "output-dir: docs"

# Use this when branches diverge
system("git config --global pull.rebase false")

system("git status") # In output, looked for unmerged paths.
system("git merge --abort")
system("git pull")



system("git add docs/index.html docs/search.json")
system("git commit -m \"Resolve merge conflict (keep rendered site outputs)\"")


# Check for ignored stuff
system("git check-ignore -v docs/_site_libs 2>/dev/null")



quarto::quarto_render(".")





# Render all files
system("quarto render")




# If another git process is running
system("git status") # Use this to see what files are ignored or having trouble with merging.
file.exists(".git/index.lock") # Find git lock
unlink(".git/index.lock") # delete file causing git lock

system("git status")

