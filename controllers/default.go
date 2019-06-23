package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

type mystruct struct {
	FieldOne string `json:"field_one"`
}

func (c *MainController) Get() {
	c.Data["Website"] = "beego.me"
	c.Data["Email"] = "astaxie@gmail.com"
	c.TplName = "index.tpl"
}

func (this *MainController) Post() {
	txt := this.GetString("convert_type")
	jsonStruct := mystruct{
		FieldOne: txt,
	}

	err := this.SaveToFile("upload_file", "./uploads/hello.png")
	beego.Info("Log error save file")
	beego.Info(err)
	this.Data["json"] = &jsonStruct
	this.ServeJSON()
}
