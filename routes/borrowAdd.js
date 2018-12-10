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
    var borrowId=req.param("borrowId");
    var borrowDate=req.param("borrowDate");
    var cusNo=req.param("cusNo");
    var vidNo=req.param("vidNo");
    var backdate=req.param("backdate");

    //建立一個新資料物件
    var newData={
        borrowId:borrowId,
        borrowDate:borrowDate,
        cusNo:cusNo,
		vidNo:vidNo,
		backdate:backdate
    }	
	
    pool.query('INSERT INTO borrow1 SET ?', newData, function(err, rows, fields) {
        if (err){
            res.render('AddFail', {});     //新增失敗
        }else{
            res.render('AddSuccess', {});  //新增成功
        }
    });
});

module.exports = router;
