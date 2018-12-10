var express = require('express');
var router = express.Router();
var mysql = require('mysql');

//------------------
// 載入資料庫連結
//------------------
var pool = require('./db.js');

//------------------
// POST 方法
//------------------
router.post('/', function(req, res, next) {
    //取得使用者傳來的參數
    var vidNo=req.param("vidNo");
    var vidName=req.param("vidName");
    var vidType=req.param("vidType");
    var vidArea=req.param("vidArea");
    var stockDate=req.param("stockDate");
	
    //建立一個新資料物件
    var newData={
        vidNo:vidNo,
        vidName:vidName,
        vidType:vidType,
        vidArea:vidArea,
        stockDate:stockDate
    }	
	
    pool.query('INSERT INTO video SET ?', newData, function(err, rows, fields) {
        if (err){
            res.render('AddFail', {});     //新增失敗
        }else{
            res.render('AddSuccess', {});  //新增成功
        }
    });
});

module.exports = router;
