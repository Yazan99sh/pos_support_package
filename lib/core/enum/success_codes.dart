enum SuccessCodes {
  get(200),
  post(201),
  put(204),
  delete(204),
  patch(204),
  ;

  final num value;
  const SuccessCodes(this.value);
}
