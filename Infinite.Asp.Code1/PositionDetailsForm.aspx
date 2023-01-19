<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PositionDetailsForm.aspx.cs" Inherits="Infinite.Asp.Code1.PositionDetailsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript">
    function ShowSuccessMessage() {
        alert("Success! Position Added successfully.");
    }
    </script>

</head>
<body class="mt-4">
    <h2>Create New Position</h2>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-5">
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">Position Code</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtPositionCode" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RfvPositionCode" Display="Dynamic" SetFocusOnError="true" Text="*" runat="server" ControlToValidate="TxtPositionCode" ForeColor="Red" ErrorMessage="Please enter Position Code"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label  col-md-4">Description</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtDescription" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RfvDesc" Display="Dynamic" SetFocusOnError="true" Text="*" runat="server" ControlToValidate="TxtDescription" ForeColor="Red" ErrorMessage="Please Enter Description" />
                        </div>
                    </div>
                   
                   
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">Year</label>
                        <div class="col-md-8">
                            <asp:DropDownList CssClass="form-select" ID="DdlYear" runat="server" >
                                <asp:ListItem Text="--Select--" Value="0" />
                                <asp:ListItem Text="2023" Value="2023" />
                                <asp:ListItem Text="2024" Value="2024" />
                                <asp:ListItem Text="2025" Value="2025" />
                                <asp:ListItem Text="2026" Value="2026" />
                                <asp:ListItem Text="2027" Value="2027" />
                               

                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RfvYear" Display="Dynamic" SetFocusOnError="true" Text="*" runat="server" ForeColor="Red" ControlToValidate="DdlYear"  InitialValue="0" ErrorMessage="Please Select Year"></asp:RequiredFieldValidator>

                       
                        </div>
                    </div>
                    <div class="mb-2 row">
                        <label class="form-label col-md-4">Budget Strength</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtBStrength" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RfvBStrength" Text="*" SetFocusOnError="true" runat="server"  ControlToValidate="TxtBStrength" ForeColor="Red" ErrorMessage="Please Enter Budgeted Strngth"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                      <div class="mb-2 row">
                        <label class="form-label col-md-4">Current Strength</label>
                        <div class="col-md-8">
                            <asp:TextBox ID="TxtCStrength" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="RfvCStrength" Text="*" SetFocusOnError="true" runat="server"  ControlToValidate="TxtCStrength" ForeColor="Red" ErrorMessage="Please Enter Current Strngth"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                   
                          <div>
                              <asp:Button ID="BtnAdd" runat="server" Text="Submit" OnClick="BtnAdd_Click"/> 
                           <asp:Button ID="BtnReset" runat="server" Text="Reset" OnClick="BtnReset_Click" CausesValidation="false"/> 

                </div>
                
                   
               
                </div>
               <div class="col-md-3">
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
            </div>
            </div>
        </div>
    </form>
   
</body>
</html>
