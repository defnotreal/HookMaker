/// @arg {String} webhookID	   - Your webhook's ID on Discord
/// @arg {String} webhookToken - Your webhook's token on Discord

function discord_webhook_create(_id, _tkn)
{
	var _inst = instance_create_depth(0, 0, 0, hmWebhook,
	{
		whID:  _id,
		whTkn: _tkn
	});
	return _inst;
}

/// @arg {Id.Instance} hook - An active hmWebhook instance

function DiscordEmbed(_hook) constructor
{
	arr = _hook.whEmbeds;
	
	if (array_length(arr) == 10)
	{
		show_debug_message("EMBED COULD NOT BE MADE!\nTen embeds were already found!");
		exit;
	}

	ebID		= 0;
	ebTitle		= "This is an example embed!";
	ebDesc		= "Gaze upon its magnificent exampleness.";
	ebCol		= 0x7289DA;
	ebTimestamp = 0;
		
	ebFooter	=
	{
		text:	  "Thank you for using HookMaker!",
		icon_url: ""
	};
	ebAuthor	=
	{
		name:	  "",
		url:	  "",
		icon_url: ""
	};
	ebThumbnail =
	{
		url:    "",
		width:  0,
		height: 0
	};
	ebImage		=
	{
		url:    "",
		width:  0,
		height: 0
	};

	newEmb =
	{
		type:		 "rich",	//DO NOT CHANGE THIS!
		title:		 ebTitle,
		description: ebDesc,
		color:		 ebCol,
		author:		 ebAuthor,
		footer:		 ebFooter,
		thumbnail:	 ebThumbnail,
		image:		 ebImage,
		timestamp:	 ebTimestamp
	};
	
	array_push(arr, newEmb);
	
	/// @arg {String} string
	
	static title = function(_str = -4)
	{
		var _toRead = arr[ebID][$ "title"];
		
		if (_str == -4) return _toRead;
		else arr[ebID][$ "title"] = _str;
		
		return self;
	}
	
	/// @arg {String} string
	
	static description = function(_str = -4)
	{
		var _toRead = arr[ebID][$ "description"];
		
		if (_str == -4) return _toRead;
		else arr[ebID][$ "description"] = _str;
		
		return self;
	}
	
	/// @arg {Real} col - Hex values only as of now
	
	static color = function(_col = -4)
	{
		var _toRead = arr[ebID][$ "color"];
		
		if (_col == -4) return _toRead;
		else arr[ebID][$ "color"] = _col;
		
		return self;
	}
	
	///@arg {String} string
	
	static footer_text = function(_str = -4)
	{
		var _toRead = arr[ebID][$ "footer"];
		
		if (_str == -4) return _toRead.text;
		else arr[ebID][$ "footer"].text = _str;
		
		return self;
	}
	
	///@arg {String} string
	
	static footer_icon = function(_str = -4)
	{
		var _toRead = arr[ebID][$ "footer"];
		
		if (_str == -4) return _toRead.icon_url;
		else arr[ebID][$ "footer"].icon_url = _str;
		
		return self;
	}
	
	///@arg {String} string
	
	static author = function(_str = -4)
	{
		var _toRead = arr[ebID][$ "author"];
		
		if (_str == -4) return _toRead.icon_url;
		else arr[ebID][$ "author"].name = _str;
		
		return self;
	}
	
	///@arg {String} string
	
	static author_url = function(_str = -4)
	{
		var _toRead = arr[ebID][$ "author"];
		
		if (_str == -4) return _toRead.icon_url;
		else arr[ebID][$ "author"].url = _str;
		
		return self;
	}
	
	///@arg {String} string
	
	static author_icon = function(_str = -4)
	{
		var _toRead = arr[ebID][$ "author"];
		
		if (_str == -4) return _toRead.icon_url;
		else arr[ebID][$ "author"].icon_url = _str;
		
		return self;
	}
	
	///@arg {String} string
	
	static thumbnail = function(_str = -4)
	{
		var _toRead = arr[ebID][$ "thumbnail"];
		
		if (_str == -4) return _toRead.url;
		else arr[ebID][$ "thumbnail"].url = _str;
		
		return self;
	}
	
	///@arg {String} string
	
	static image = function(_str = -4)
	{
		var _toRead = arr[ebID][$ "image"];
		
		if (_str == -4) return _toRead.url;
		else arr[ebID][$ "image"].url = _str;
		
		return self;
	}
}