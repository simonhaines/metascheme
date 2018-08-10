declare void @trace(i8*, i32, ...)
define i64 @trace-var(i8* %bytes, i64* %param) {
  call void(i8*, i32, ...) @trace(i8* %bytes, i32 1, i64* %param)
  ret i64 0
}
