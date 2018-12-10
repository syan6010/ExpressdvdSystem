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
    var empNo=req.param("empNo");
    var empName=req.param("empName");
	var gender=req.param("gender");
    var birthday=req.param("birthday");
    var age=req.param("age");
    var id=req.param("id");
    var tel=req.param("tel");
    var address=req.param("address");
    var mail=req.param("mail");
    var title=req.param("title");
    var arriveDate=req.param("arriveDate");

	
    //建立一個新資料物件
    var newData={
      empNo:empNo,
      empName:empName,
	  gender:gender,
      birthday:birthday,
      age:age,
      id:id,
      tel:tel,
	  address:address,
      mail:mail,
      title:title,
	  arriveDate:arriveDate
    }
	
	
    pool.query('UPDATE employee SET ? WHERE empNo = ?', [newData, empNo] , function(err, rows, fields) {
        if (err){
            res.render('modifyFail', {});   
        }else{
            res.render('modifySuccess', {}); 
        }
    });    	
});

module.exports = router;