App.info({
  name: 'TestApp',
  description: 'A photo test app for android',
  version: '0.0.1'
});

App.icons({
  'android_mdpi': 'public/mipmap-mdpi/ic_launcher.png',
  'android_hdpi': 'public/mipmap-hdpi/ic_launcher.png',
  'android_xhdpi': 'public/mipmap-xhdpi/ic_launcher.png'
});

App.accessRule('http://*');
App.accessRule('https://*');
