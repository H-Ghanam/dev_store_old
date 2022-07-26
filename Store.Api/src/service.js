var Service = require('node-windows').Service;
var path = require('path');
// Create a new service object
var svc = new Service({
  name:'Store Api',
  description: 'Store backend server',
  script: path.join(__dirname,'index.js'),
  //, workingDirectory: '...'
  //, allowServiceLogon: true
});

// Listen for the "install" event, which indicates the
// process is available as a service.
svc.on('install',function(){
  svc.start();
  console.log('service started.');
  console.log('The service exists: ',svc.exists);
});


// // Listen for the "uninstall" event so we know when it's done.
// svc.on('uninstall',function(){
//     console.log('Uninstall complete.');
//     console.log('The service exists: ',svc.exists);
//   });


// install and start the service.
svc.install();


// // Uninstall the service.
// svc.uninstall();

module.exports = svc;