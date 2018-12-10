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
    var cusNo=req.param("cusNo");
    var cusName=req.param("cusName");
	var gender=req.param("gender");
    var birthday=req.param("birthday");
	var age=req.param("age");
    var address=req.param("address");
    var tel=req.param("tel");
    var mail=req.param("mail");
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
        address:address,
        mail:mail,
        startDate:startDate,
        yearlimit:yearlimit
    }	
	
    pool.query('INSERT INTO customer SET ?', newData, function(err, rows, fields) {
        if (err){
            res.render('AddFail', {});     //新增失敗
        }else{
            res.render('AddSuccess', {});  //新增成功
        }
    });
});

module.exports = router;
