var Echo = {
  echo: function (msg, success, failure) {
    cordova.exec(success, failure, 'Echo', 'echo', [msg]);
  }
};

module.exports = Echo;
