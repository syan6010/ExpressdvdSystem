var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var cus = require('./routes/cus');
var vidMan = require('./routes/vidMan');
var emoMan = require('./routes/emoMan');
var report = require('./routes/report');
var cusAdd = require('./routes/cusAdd');
var cusRead = require('./routes/cusRead');
var employeeAdd = require('./routes/employeeAdd');
var employeeModify = require('./routes/employeeModify');
var employeeInquire = require('./routes/employeeInquire');
var employeesch = require('./routes/employeesch');
var addFail = require('./routes/addFail');
var addSuccess = require('./routes/addSuccess');
var cusModify = require('./routes/cusModify');
var cusModifyPlus = require('./routes/cusModifyPlus');
var modifyFail = require('./routes/modifyFail');
var modifySuccess = require('./routes/modifySuccess');
var vidModify = require('./routes/vidModify');
var vidModifyForm = require('./routes/vidModifyForm');
var borrow1 = require('./routes/borrow1');
var overdue = require('./routes/overdue');
var vidAdd = require('./routes/vidAdd');
var vidRead = require('./routes/vidRead');
var cusAddForm = require('./routes/cusAddForm');
var cusReadForm = require('./routes/cusReadForm');
var warehouse = require('./routes/warehouse');
var borrow = require('./routes/borrow');
var cusModifySearch = require('./routes/cusModifySearch');
var employeeAddForm = require('./routes/employeeAddForm');
var employeeModifyForm = require('./routes/employeeModifyForm');
var employeeModifySearch = require('./routes/employeeModifySearch');
var borrowAdd = require('./routes/borrowAdd');
var giveback = require('./routes/giveback');
var givebackSearch = require('./routes/givebackSearch');
var borrowDelete = require('./routes/borrowDelete');
var deleteSuccess = require('./routes/deleteSuccess');
var deleteFail = require('./routes/deleteFail');
var dataNotFound = require('./routes/dataNotFound');
var vidAddForm = require('./routes/vidAddForm');
var vidModifySearch = require('./routes/vidModifySearch');
var vidDeleteSearch = require('./routes/vidDeleteSearch');
var vidDelete = require('./routes/vidDelete');
var borrowRecentSearch = require('./routes/borrowRecentSearch');
var borrowRecent = require('./routes/borrowRecent');
var cusReadDelete = require('./routes/cusReadDelete');
var employeeInquireSearch = require('./routes/employeeInquireSearch');
var employeeDelete = require('./routes/employeeDelete');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/cus', cus);
app.use('/emoMan', emoMan);
app.use('/report', report);
app.use('/cusAdd', cusAdd);
app.use('/cusRead', cusRead);
app.use('/employeeAdd', employeeAdd);
app.use('/employeeModify', employeeModify);
app.use('/employeeInquire', employeeInquire);
app.use('/employeesch', employeesch);
app.use('/addFail', addFail);
app.use('/addSuccess', addSuccess);
app.use('/cusModify', cusModify);
app.use('/cusModifyPlus', cusModifyPlus);
app.use('/modifyFail', modifyFail);
app.use('/modifySuccess', modifySuccess);
app.use('/vidModify', vidModify);
app.use('/vidModifyForm', vidModifyForm);
app.use('/borrow1', borrow1);
app.use('/overdue', overdue);
app.use('/vidAdd', vidAdd);
app.use('/vidRead', vidRead);
app.use('/cusAddForm', cusAddForm);
app.use('/cusReadForm', cusReadForm);
app.use('/vidMan', vidMan);
app.use('/warehouse', warehouse);
app.use('/borrow', borrow);
app.use('/cusModifySearch', cusModifySearch);
app.use('/employeeAddForm', employeeAddForm);
app.use('/employeeModifyForm', employeeModifyForm);
app.use('/employeeModifySearch', employeeModifySearch);
app.use('/borrowAdd', borrowAdd);
app.use('/giveback', giveback);
app.use('/givebackSearch', givebackSearch);
app.use('/borrowDelete', borrowDelete);
app.use('/deleteSuccess', deleteSuccess);
app.use('/deleteFail', deleteFail);
app.use('/dataNotFound', dataNotFound);
app.use('/vidAddForm', vidAddForm);
app.use('/vidModifySearch', vidModifySearch);
app.use('/vidDeleteSearch', vidDeleteSearch);
app.use('/vidDelete', vidDelete);
app.use('/borrowRecentSearch', borrowRecentSearch);
app.use('/borrowRecent', borrowRecent);
app.use('/cusReadDelete', cusReadDelete);
app.use('/employeeInquireSearch', employeeInquireSearch);
app.use('/employeeDelete', employeeDelete);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
