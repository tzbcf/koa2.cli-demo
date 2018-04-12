const query =require('../db');

let users =
    `create table if not exists users(
     id INT NOT NULL AUTO_INCREMENT,
     userName VARCHAR(100) NOT NULL,
     password VARCHAR(100) NOT NULL,
     name VARCHAR(100) NOT NULL,
     phoneId VARCHAR(12) NOT NULL,
     identityId VARCHAR(19) NOT NULL,
     PRIMARY KEY ( id )
    );`;

let createTable = ( sql ) => {
    return query( sql, [] )
};

createTable( users );

let findUserData = ( userName ) => {
    console.log('name',userName);
    let _sql = `select * from users where userName="${userName}";`;
    console.log('sql',_sql);
    return query( _sql )
};

let registerUser = (val) => {
    console.log('val',val);
    let _sql = `insert into users (userName,password,name,identityId,phoneId) values 
    ("${val.userName}","${val.password}","${val.name}","${val.identityId}","${val.phoneId}")`;
    console.log(_sql);
    return query( _sql )
}
module.exports={
    findUserData,
    registerUser
}