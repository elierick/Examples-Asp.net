<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="EjemploAspxloadingpanel._Default" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
                     <dx:aspxloadingpanel ID="ASPxLoadingPanel1" runat="server" 
                                    ClientInstanceName="LoadingPanel" 
                                    CssFilePath="~/App_Themes/Office2003Blue/{0}/styles.css" 
                                    CssPostfix="Office2003Blue" Modal="True" Text="Procesando...">
                                    <Image Url="~/App_Themes/Office2003Blue/Web/Loading.gif">
                                    </Image>
                                </dx:aspxloadingpanel>                       
                                <dx:aspxcallback ID="ASPxCallback1" runat="server" 
                                    ClientInstanceName="Callback">
                                </dx:aspxcallback>
                     <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" 
                         onclick="ASPxButton1_Click" Text="EJECUTAR ACCION">
                         <ClientSideEvents Click="function(s, e) {
	 Callback.PerformCallback();
    LoadingPanel.Show();

}" />
                     </dx:ASPxButton>
</asp:Content>
