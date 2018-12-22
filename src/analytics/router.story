http server as server
  when server listen path: "/track/event" method: "post" as req
    req finish
    id = req.body["id"]
    event_name = req.body["event_name"]
    event_props = req.body["event_props"]
    clevertap push event: event_name properties: event_props identity: id

  when server listen path: "/track/profile" method: "post" as req
    req finish
    id = req.body["id"]
    profile = req.body["profile"]
    clevertap push profile: profile identity: id
