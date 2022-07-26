const fs = require('fs');
const path = require('path');

var batchDir = path.resolve("./src/Windows/batch")

// const excute = (fileName) => {
//     const process = require('child_process');
//     var ls = process.spawn(`${batchDir}\\${fileName}.bat`);
//     ls.stdout.on('data', function (data) {
//         console.log(data);
//     });
//     ls.stderr.on('data', function (data) {
//         console.log(data);
//     });
//     ls.on('close', function (code) {
//         if (code == 0)
//             console.log('Stop');
//         else
//             console.log('Start');
//     });
// }



const excuteBat = (fileName) => {
    const { exec } = require('child_process');

    const {err}= exec(`${batchDir}\\${fileName}.bat`, (err, stdout, stderr) => {
      if (err) {
        console.error("ERROR reading batch file. ");
        return;
      }
      console.log("Batch excuted.");
      
    });

    if (err) {
        return false;
    } else {
        return true;
    }

}


module.exports = {
    excuteBat,
    // excute,
}