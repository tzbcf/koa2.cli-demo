var mysql = require('mysql');
var config = require('../config/config.js')

var pool  = mysql.createPool({
    host     : config.database.HOST,
    user     : config.database.USERNAME,
    password : config.database.PASSWORD,
    database : config.database.DATABASE,
    port     : config.database.PORT
});

let query = ( sql, values ) => {
    console.log('val',values)
    return new Promise(( resolve, reject ) => {
        pool.getConnection( (err, connection) => {
            if (err) {
                reject( err )
            } else {
                connection.query(sql, values, ( err, rows) => {
                    if ( err ) {
                        reject( err )
                    } else {
                        console.log('rows',rows);
                        resolve( rows )
                    }
                    connection.release()
                })
            }
        })
    })

};

module.exports = query ;