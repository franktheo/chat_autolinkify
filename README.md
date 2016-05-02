An example of chat using action cable with auto-linkification

## Dependencies

1. You must have redis installed.

## Rails and Ruby Versions

1. Rails version: Rails 5.0.0.beta
2. Ruby version: Ruby-2.2.2 or greater

## Starting the servers

1. Run `./bin/setup`
2. Run `./bin/cable`
3. Run redis server: `redis-server`
4. run rails server: rails server`
5. Visit `http://localhost:3000`

## Chatting

1. Open two browsers with separate cookie spaces (like a regular session and 
   an incognito session (i.e. private window in Mozilla). 
2. Login as different people in each browser. 
3. Go to the same message channel
4. Add comments in either browser and see them appear real-time on the counterpart screen.
