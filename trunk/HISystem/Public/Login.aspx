﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteTemplate3.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Public_Login" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">




    <h2 style="background-color: #d3e7c5">
        Log In
    </h2>
    <p>
        Please enter your username and password.
        <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="False" 
            ForeColor="#3366CC" Font-Underline="True">Register</asp:HyperLink> &nbsp;if you don't have an account.
    </p>
    <asp:Login ID="LoginUser" runat="server" EnableViewState="False" 
    BackColor="#FFFFFF" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" 
    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" 
        Font-Bold="True" Width="271px" DestinationPageUrl="~/Default.aspx" 
        Height="177px">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup" Font-Size="Small"/>
            <div class="accountInfo" style="background-color: #a2cc85">
               
                <fieldset class="login">
                    <legend style="color: #FFFFFF">Account Information</legend>
                    <br />
                    <table>
                    <tr>
                    <td style="width: 116px"> <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Font-Size="Small" ForeColor="White">Username:</asp:Label>
                   </td>
                    <td style="width: 176px">
                      <asp:TextBox ID="UserName" runat="server" 
                            AutoCompleteType="Disabled" Width="128px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" Display="Dynamic" 
                            runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                             ValidationGroup="LoginUserValidationGroup" Font-Size="Small">*</asp:RequiredFieldValidator>
                    </td>
                   
                    </tr>
                      
                    
                    <tr>
                    <td style="width: 116px">
                     <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                            Font-Size="Small" ForeColor="White">Password:</asp:Label>
                    </td>
                       <td style="width: 176px">
                        <asp:TextBox ID="Password" runat="server" 
                               TextMode="Password" AutoCompleteType="Disabled" Width="128px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" Display="Dynamic" 
                            runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                             ValidationGroup="LoginUserValidationGroup" Font-Size="Small">*</asp:RequiredFieldValidator>
                       </td>
                       
                    </tr>
                    <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                            ValidationGroup="LoginUserValidationGroup" Width="64px" />
                    <asp:Button ID="ClearButton" runat="server" 
                            OnClientClick="ClearLoginTextboxes();" Text="Clear" Width="64px" />
                    </td>
                    </tr>
                    </table>
                </fieldset>
                
                
            </div>
        </LayoutTemplate>
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
    </asp:Login>





    <br />






</asp:Content>

