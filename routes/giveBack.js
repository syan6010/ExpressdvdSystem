var express = require('express');
var router = express.Router();

//----------------------------
// 引用db.js的pool物件
//----------------------------
var pool = require('./db.js');


//========================
// 處理GET請求
//========================
router.get('/', function(req, res, next) {
    var pno = req.param("no");  //取得傳入參數
	
    pool.query('select * from borrow1 where vidNo = ?', [pno], function (error, results, fields) {
        if (error||results.length==0){
            res.render('dataNotFound', {});  //轉到找不到資料的畫面
        }else{
            res.render('giveBack', {items:results});  //轉到顯示資料的畫面
        }       
    });
});

module.exports = router;