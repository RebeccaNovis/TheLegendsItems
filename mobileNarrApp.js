const http = require('http');
const url = require('url');
const mysql = require('mysql2');

//MySQL Database Connection
const con = mysql.createConnection({
  host: "****",
  user: "****",
  password: "****",
  database: '****'
});

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {
    const getParameters = url.parse(req.url, true).query;
    let selectSql = 'SELECT game, totalItems, newItems, repeatItems, laterReusedItems, originalOrder FROM Number_Zelda_Items';
    whereStatements = [],
    orderByStatements = [],
    queryParameters = [];
    
    if (typeof getParameters.totalItemsSort !== 'undefined') {
      const sort = getParameters.totalItemsSort;
      if (sort === 'ASC') {
        orderByStatements.push('totalItems ASC');
      } else if (sort === 'DESC') {
        orderByStatements.push('totalItems DESC')
      }
    }

    if (typeof getParameters.newItemsSort !== 'undefined') {
      const sort = getParameters.newItemsSort;
      if (sort === 'ASC') {
        orderByStatements.push('newItems ASC');
      } else if (sort === 'DESC') {
        orderByStatements.push('newItems DESC')
      }
    }

    if (typeof getParameters.repeatItemSort !== 'undefined') {
      const sort = getParameters.repeatItemSort;
      if (sort === 'ASC') {
        orderByStatements.push('repeatItems ASC');
      } else if (sort === 'DESC') {
        orderByStatements.push('repeatItems DESC')
      } 
    }

    if (typeof getParameters.laterReusedSort !== 'undefined') {
      const sort = getParameters.laterReusedSort;
      if (sort === 'ASC') {
        orderByStatements.push('laterReusedItems ASC');
      } else if (sort === 'DESC') {
        orderByStatements.push('laterReusedItems DESC')
      } 
    }

    //Dynamically add ORDER BY expressions to SELECT statements if needed
  if (orderByStatements.length > 0) {
    selectSql = selectSql + ' ORDER BY ' + orderByStatements.join(', ');
  }

  console.log(selectSql);
  con.query(selectSql, queryParameters, function (err, result, fields) {
    if (err)  {
      throw err;
    } else {
      res.writeHead(
        200, {
        'Content-Type': 'text/json',
        'Access-Control-Allow-Origin': '*'
      }).end(
        JSON.stringify({
        'result': 200,
        'classes' : result
      }));     
    }
  }); 
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});