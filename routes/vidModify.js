var express = require('express');
var router = express.Router();
var mysql = require('mysql');

//------------------
// 載入資料庫連結
//------------------
var pool = require('./db.js');


//============================
// 處理 POST 請求
//============================
router.post('/', function(req, res) {
    // 取得使用者傳來的參數
    var vidNo=req.param("vidNo");
    var vidName=req.param("vidName");
    var vidType=req.param("vidType");
    var vidArea=req.param("vidArea");
    var stockDate=req.param("stockDate");

    // 建立一個新資料物件
    var newData={
        vidNo:vidNo,
        vidName:vidName,
        vidType:vidType,
        vidArea:vidArea,
        stockDate:stockDate
    }	
	
    pool.query('UPDATE video SET ? WHERE vidNo = ?', [newData, vidNo] , function(err, rows, fields) {
        if (err){
            res.render('modifyFail', {});   
        }else{
            res.render('modifySuccess', {}); 
        }
    });    	
});

module.exports = router;