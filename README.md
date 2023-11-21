# Welcome to HookMaker!
Welcome to the GitHub page for HookMaker, an extension for GameMaker that allows your games to make working webhooks through Discord's API, all working under one script and one object!

## Why use this?
Webhooks can be used for a lot of things. I personally made this extension to compliment GameMaker's console for debugging and crash logs, but however they're used is completely up to you!

## How do I use it?
You can send webhooks that are either just text or you can also include embeds in them, up to ten per webhook to comply with Discord's API guidelines.

### Text
To start, regardless of what kind of webhook you're making, you want to create a new webhook, which is done by doing this:
```
webhook = discord_webhook_create(*your webhook's id*, *your webhook's token*);   --You can get these by copying your webhook's URL and copying the big strings of characters after /webhooks/.
```
This initializes the `hmWebhook` object and holds all the info needed by your webhook.

Then, to add text to it, simply add:
```
webhook = discord_webhook_create(*your webhook's id*, *your webhook's token*);
webhook.content("This is a text webhook!");
```
> Fun fact: most of the webhook and embed functions also act as getters if you leave the parentheses empty!

Finally, once you have your webhook object active and your content set, you can send it by doing:
```
webhook = discord_webhook_create(*your webhook's id*, *your webhook's token*);
webhook.content("This is a text webhook!");

webhook.send();
```
Then, when called, your webhook should appear in its designated Discord channel soon after!

![image](https://github.com/defnotreal/HookMaker/assets/12503290/3ec70d25-db4c-4f3e-b26b-3525dff28a68)

### Embeds
Moving onto embeds, you'll need to initialize them separately from your webhook, but you'll be linking the two in the same function. Simply run:
```
webhook = discord_webhook_create(*your webhook's id*, *your webhook's token*);
webhook.content("This is a text webhook!");

embed = new DiscordEmbed(webhook);
```

Once you've done this, there are many different customizable pieces to your embed. As an example, let's try changing the title and description, in a way not too dissimilar from changing the content of the main webhook:
```
embed = new DiscordEmbed(webhook);

embed.title("Example Title");
embed.description("Example description");
```

When you've done that, your code should look like this:
```
webhook = discord_webhook_create(*your webhook's id*, *your webhook's token*);
webhook.content("This is a text webhook!");

embed = new DiscordEmbed(webhook);

embed.title("Example Title");
embed.description("Example description");

webhook.send();
```

When running that code now, this should be your result:

![image](https://github.com/defnotreal/HookMaker/assets/12503290/e730896f-1da4-43f4-a42e-11e922ae9ef4)

You can also customize parts of your embed like colors, authors, and images.

##Conclusion
You now have a basic understanding of HookMaker! It's a very simple extension to use that should hopefully give a lot of leverage. Please let me know if there's any way I can improve on anything!
