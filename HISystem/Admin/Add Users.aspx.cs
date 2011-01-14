﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Admin_Add_Users : System.Web.UI.Page
{

    MembershipUser user;

    private void Page_Load()
    {
        if (!Page.IsPostBack)
        {
            // Bind the users and roles
            
            BindRolesToList();

       
            
        }
    }

    private void BindRolesToList()
    {
        // Get all of the roles
        string[] roles = Roles.GetAllRoles();


        
        RoleList1.DataSource = roles;
        
        RoleList1.DataBind();
    }
    protected void AddUser()
    {
        // Add User.
        MembershipUser newUser = Membership.CreateUser(username.Text, password.Text, email.Text);
        newUser.Comment = comment.Text;
        Membership.UpdateUser(newUser);


        Roles.AddUserToRole(username.Text, RoleList1.SelectedValue);
        // Add Roles.
        //foreach (ListItem rolebox in UserRoles.Items)
        //{
        //    if (rolebox.Selected)
        //    {
        //        Roles.AddUserToRole(username.Text, rolebox.Text);
        //    }
        //}

       
        Response.Write("<script> window.alert('Added User Successfully.')</script>");


        //clear textboxes
        username.Text = string.Empty;
        password.Text = string.Empty;
        email.Text = string.Empty;
        comment.Text = string.Empty;


    }

    private void Page_PreRender()
    {
        UserRoles.DataSource = Roles.GetAllRoles();
        UserRoles.DataBind();
    }



    protected void btn_addUser_Click(object sender, EventArgs e)
    {

        try
        {
            AddUser();
           
            // Response.Redirect("~/Public/Login.aspx");
        }
        catch (Exception ex)
        {
            ConfirmationMessage.InnerText = "Insert Failure: " + ex.Message;
        }
       
    }
}