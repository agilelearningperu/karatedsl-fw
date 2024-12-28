function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'cert';
  }
  var config = {
    env: env,
    myVarName: 'someValue'
  }
  if (env == 'dev') {
  config.URLAPI = 'https://restful-booker.dev.herokuapp.com'

  } else if (env == 'cert') {
    config.URLAPI = 'https://restful-booker.herokuapp.com'
    config.URLTOKEN = 'https://restful-booker.herokuapp.com'
    config.TOKEN = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
  }
  return config;
}