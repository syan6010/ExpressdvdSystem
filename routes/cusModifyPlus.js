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
    //取得使用者傳來的參數
    var cusNo=req.param("cusNo");
    var cusName=req.param("cusName");
	var gender=req.param("gender");
    var birthday=req.param("birthday");
	var age=req.param("age");
    var tel=req.param("tel");
    var mail=req.param("mail");
    var address=req.param("address");
    var startDate=req.param("startDate");
    var yearlimit=req.param("yearlimit");
	
    //建立一個新資料物件
    var newData={
        cusNo:cusNo,
        cusName:cusName,
		gender:gender,
        birthday:birthday,
		age:age,
        tel:tel,
        mail:mail,
        startDate:startDate,
        address:address,
        yearlimit:yearlimit
    }	
	
    pool.query('UPDATE customer SET ? WHERE cusNo = ?', [newData, cusNo] , function(err, rows, fields) {
        if (err){
            res.render('modifyFail', {});   
        }else{
            res.render('modifySuccess', {}); 
        }
    });    	
});

module.exports = router;