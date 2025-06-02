# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository. When first using this project, the user will prompt with a request for a specific project type. Change this file accordingly to account for this request. 

## Project Overview

Focus on project root when performing your actions. The following files are meant to guide you while developing:
- .vibe/docs
- .vibe/tasks
- .vibe/ERRORS.md
- .vibe/INSTRUCTIONS.md
- .vibe/LINKS.md
- .vibe/LOG.txt

Your instructions you will follow are in INSTRUCTIONS.md. If INSTRUCTIONS.md is empty, check .vibe/tasks for any open tasks, determine which task is best to complete next and ask the user for permission to continue with the task in question. If there are no INSTRUCTIONS or TASKS, continue with your assumption of what the user is looking to achieve. WHen you complete an action, please clear the INSTRUCTIONS.md file to prepare for the next action. 

Any errors that occured in a previous development iteration are stored in ERRORS.md. If no errors are found,it is either the first iteration or no errors have occurred. Once you have completed your actions based on your prompt, INSTRUCTIONS and ERRORS, please clear the ERRORS.md file. 

Add any tasks that need actioning are in the tasks/ folder. By default there will be one TASKS.md file, however there may be more taks in this folder, read all tasks in the folder.  When a task is complete, update the relevant task file showing that this task is completed. Do so in a way that makes it easy to scan later for open and closed tasks. 

Relevant documentation can be found in the folder .vibe/docs. You will find different formats of document there, use this to supplement your approach, your understanding, and your actions. You may choose to use these documents if you need more context or guidance. Not every task will require this action. As you learn more from your own actions, the output of running code, or from querying the web, place relevant information in the docs folder. You can choose the structure that best works for you. 

There are a set of external documentation, in the form of a Title and Link, in the LINKS.csv file. This list will allow you to quickly navigate to relevant documentation, guides, information to perform your action in the best possible way. If you query the web, put a link to the articles that were useful in the csv file. 

After you complete your actions, do not forget to add an entry to the LOG.txt file. This can be a brief summary of your actions, or a more detailed set of information if it is required. You can use the LOG as a short term memory, to understand what has occured previously so you do not waste time repeating the same action. 

You are working in a project which has git as a requirement. If you find there is no .gitignore file, you will need to add one. As you are developing, add relevant entries to .gitignore that you deem necessary. Explain this to the end user when needed. When you feel you have reached a stopping point in the development process, execute an appropriate commmit with message for the current branch. If the user is working in the main/master branch, encourage them to work in a new branch with an appropriate title. Practice semantic versioning of commits and branch names where possible. 

## Development Commands

When the user provides a specific project idea, you can add your relvant development commands here. 