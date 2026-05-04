class Sheet {
  int ?sheetNumber;
  String ?sheetDescription;
  String ?sheetFile;

  Sheet({required number,description,required file}){
    this.sheetNumber=number;
    this.sheetDescription=description;
    this.sheetFile=file;
  }
}