# sharehouse-bot 🤖
Small bot that sends a weekly reminders of whose turn it is to do the cleaning.

### How to update the database?
The database of this project relies on two files `members.yml` and `teams.yml`.

The `teams.yml` file contains the number of teams and it must be sorted by order, the first team in the least will be the next team picked by the bot, and then will update the list automatically after sending the message.

The `members.yml` file contains the members of each team, please edit this file if you need to add or remove any member of the house.

⚠️ When editing any of the files, please make sure that you are not breaking the formating of the file. If the format is no longer valid the Bot will be confused and won't work anymore 🤖

### How to change the frequency in which the robot sends the message.
This bot is set to send a custom message every week's Monday at 8:00 am (JST).
You can change the frequency in the `.github/workflows/main.yml` file. Go to line 5 and edit the `- cron` field. You can follow [this](https://jasonet.co/posts/scheduled-actions/) guide if you are not familiar with the [Cron Syntax](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/crontab.html#tag_20_25_07).

⚠️ Please keep in mind that GitHub actions run on UTC time. For instance, the original schedule is set to run the app every Sunday at 23:00 UTC (Monday, 8:00 in JST).

```
on:
  schedule:
     - cron: "0 23 * * 0"
```
