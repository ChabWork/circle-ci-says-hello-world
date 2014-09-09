# Circle CI says "hello world"

This is an example app to show we can use a Circle CI build to expose a website during the build process and run Rainforest tests against it.

# How does that work?

I have used ngrok, a service I used before and that I :heart:. It's free but we need to sign up to use custom subdomains (still free!).

It is using the SHA1 of the build for the subdomain, example subdomain: http://0ae4361205f19c1581564f376ead0de48eeda773.ngrok.com/. **Note that https would work too!**

ngrok run in background, with the Circle CI background thingy and the Sinatra is daemonized.

Once the machine is up (before the test starts), it is reachable by the world.

## Known limitations

- All must be done under 60 minutes (Circle's timeout)
