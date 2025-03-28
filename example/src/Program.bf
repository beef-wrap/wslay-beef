using System;
using System.Collections;
using System.Diagnostics;
using System.IO;

using static wslay.wslay;

namespace example;

static class Program
{
	static wslay_event_send_callback send_callback = (ctx, data, len, flags, user_data) =>
		{
			return 0;
		};

	static wslay_event_recv_callback recv_callback = (ctx,  buf, len, flags, user_data) =>
		{
			return 0;
		};

	static wslay_event_genmask_callback genmask_callback = (ctx, buf, len, userdata) =>
		{
			return 0;
		};

	static wslay_event_on_msg_recv_callback on_msg_recv_callback = (ctx, arg, len) =>
		{
			Debug.WriteLine("recv");
		};

	static int Main(params String[] args)
	{
		wslay_event_context* ctx;

		wslay_event_callbacks cb = .()
			{
				send_callback = send_callback,
				recv_callback = recv_callback,
				genmask_callback = genmask_callback
			};


		wslay_event_context_client_init(&ctx, &cb, null);

		return 0;
	}
}