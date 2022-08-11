# ChatCafe Docker (chatcafe-docker)

Ready to use docker-compose script for `chatcafe-server` project

### Tiny setup step

- Clone this repo into a `parent folder` of `chatcafe-server`

  Ex.
  If chatcafe's path is `~/workdir/chatcafe-server`, this repo's path should be like this `~/workdir/chatcafe-docker`. If don't get please check in `docker-compose.yml`

- Update hostname of mongodb and redis in `db.config.js` to down here
  ```
  if (process.env.LOCAL) {
    options.mongoServers = ['mongodb:27017']  // <--- use this name instead of localhost or ip
    options.mongoUser = null
    options.mongoPassword = null
    options.redisServers = ['redisdb:6379']  // <--- use this name instead of localhost or ip
    options.redisPass = null
    options.useRedisSentinel = false
  }
  ```
- Go to `chatcafe-docker` folder and run this command
  ```
  docker-compose up -d
  ```
- Please wait all container spin up, Enjoy your day
