# sharehouse-bot 🤖
Small bot that sends a weekly reminders of whose turn it is to do the cleaning.

### How to update the database?
The database of this project relies on two files `members.yml` and `teams.yml`.

The `teams.yml` file contains the number of teams and it must be sorted by order, the first team in the least will be the next team picked by the bot, and then will update the list automatically after sending the message.

The `members.yml` file contains the members of each team, please edit this file if you need to add or remove any member of the house.

⚠️ When editing any of the files, please make sure that you are not breaking the formatting of the file, if the format is no longer valid the Bot will be confused and won't work anymore 🤖
