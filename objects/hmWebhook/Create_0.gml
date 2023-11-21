/// @desc Init

whUrl	  = $"https://discord.com/api/webhooks/{whID}/{whTkn}";
whContent = "";
whEmbeds  = [];
httpReq   = -4;

#region All functions

/// @desc Sets the content (message) of the webhook.
///		  Leave empty to return the current content instead.

/// @arg {String} string
	
function content(_str = -4)
{
	if (_str == -4) return whContent;
	else whContent = _str;
}
	
/// @desc Returns an array holding the webhook's embeds.
///		  Enter a number from 0 to return a specific embed.
	
/// @arg index
	
function get_embeds(_ind = -4)
{
	if (_ind == -4) return whEmbeds;
	else
	{
		if (_ind == clamp(_ind, 0, array_length(whEmbeds) - 1)) return whEmbeds[_ind];
		else return whEmbeds;
	}
}
	
/// @desc Sends the final webhook to its given channel on Discord.
	
///	@arg destroyOnSend - Whether the webhook should clean itself up after sending.
	
function send(_destroy = true)
{
	var headers = ds_map_create();
	headers[? "Content-Type"] = "application/json";
	
	var body	= ds_map_create()

	body[? "content"] = whContent;
	if (array_length(whEmbeds) > 0) body[? "embeds"] = whEmbeds;

	httpReq = http_request(whUrl, "POST", headers, json_encode(body));
	
	ds_map_destroy(headers);
	ds_map_destroy(body);
	if (_destroy) instance_destroy(id);
}

#endregion