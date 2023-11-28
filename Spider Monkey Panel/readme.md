By [marc2k3](https://hydrogenaud.io/index.php?PHPSESSID=mqqgs65aodh39vjv3vdi6ig5v9&topic=116669.msg1026243#msg1026243)
    
Re: Spider Monkey Panel (foo_spider_monkey_panel) - Reply #1311 – 2023-05-01 12:37:55

I've attached a new compile based on 1.6.1 with some fixes:

- A bug with utils.IsFile / utils.IsDirectory throwing script errors instead of returning false when trying unavailable drives has been fixed.
- The colour picker now functions as expected and custom colours can be added/stored until fb2k closes.
- There are utils.GetClipboardText and utils.SetClipboardText methods which are generally nicer than messing around with ActiveX objects. Some people who previously had dev builds might be used to these already.
