const query =require('../db');
let findUserData = ( name ) => {
    console.log('name',name);
    let _sql = `select * from users where name="${name}";`;
    console.log('sql',_sql);
    return query( _sql )
};
module.exports={
    findUserData
}