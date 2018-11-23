package util

import (
	"awsome_web/models/admin"
	"awsome_web/models/blog"
	"github.com/astaxie/beego/orm"
)

func RegisterDBAdminModel() {
	orm.RegisterModel(new(admin.Group), new(admin.Node), new(admin.Role), new(admin.User))
}

func RegisterDBBlogModel() {
	orm.RegisterModel(new(blog.Category), new(blog.Config), new(blog.Paper), new(blog.Roll))
}

func RegisterDBModel() {
	RegisterDBAdminModel()
	RegisterDBBlogModel()
}
