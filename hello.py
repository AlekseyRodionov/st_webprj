def app(env, start_response):


    data = env['QUERY_STRING']

    s = data.split('&')
    print s
    start_response("200 OK", [
    ("Content-Type", "text/plain"),
    ("Content-Length", str(len(data)))
    ])
    return '\n'.join(s)
