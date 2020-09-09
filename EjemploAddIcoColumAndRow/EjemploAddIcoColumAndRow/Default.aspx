<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>







<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="Aspxgridview1" ClientInstanceName="grid" runat="server"  
                OnCustomGroupDisplayText="grid_CustomGroupDisplayText" 
                Settings-ShowGroupPanel="true" KeyFieldName="ProductID" Width="100%" 
                AutoGenerateColumns="false">
                <Columns>
                    <dx:GridViewDataColumn FieldName="ProductID">
                        <HeaderCaptionTemplate>
                            <img src="images.jpg" width="20px" height="20px" /> ProductID
                        </HeaderCaptionTemplate>
                    </dx:GridViewDataColumn>
                    <dx:GridViewDataColumn FieldName="ProductName">
                    </dx:GridViewDataColumn>
                    <dx:GridViewDataCheckColumn FieldName="Discontinued">
                        <PropertiesCheckEdit AllowGrayed="true" AllowGrayedByClick="false" />
                    </dx:GridViewDataCheckColumn>
                </Columns>

            </dx:ASPxGridView>

        </div>
    </form>
</body>
</html>
