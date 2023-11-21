/// @desc

if (ds_map_find_value(async_load, "id") == httpReq)
{
	show_message("HTTP request sent!");
	if (ds_map_find_value(async_load, "status") == 0)
	{
		show_message(ds_map_find_value(async_load, "result"));
	}
	else
	{
		show_message("FUCK YOU! Webhook failed!");
	}
}