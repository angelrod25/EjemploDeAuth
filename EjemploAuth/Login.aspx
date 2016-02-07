<%@ Page Language="C#" %>
<%@ Import Namespace="System.Web.Security" %>

<!DOCTYPE html>
<script runat="server">
  void Logon_Click(object sender, EventArgs e)
  {
    if ((UserEmail.Text == "admin") && 
            (UserPass.Text == "admin"))
      {
          FormsAuthentication.RedirectFromLoginPage 
             (UserEmail.Text, Persist.Checked);
      }
      else
      {
          Msg.Text = "No se encontraron coincidencias en la base de datos. Verificar credenciales.";
      }
  }
</script>
<html>
<head id="Head1" runat="server">
  <title>Formulario de Autentificacion - Login</title>
</head>
<body>
  <form id="form1" runat="server">
    <h3>
        Ejemplo de Login</h3>
      <p>
          Usuario de prueba: admin<br> Contraseña: admin</p> 
          
    <table>
      <tr>
        <td>
          Usuario:</td>
        <td>
          <asp:TextBox ID="UserEmail" runat="server" /></td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            ControlToValidate="UserEmail"
            Display="Dynamic" 
            ErrorMessage="Llenar los campos." 
            runat="server" />
        </td>
      </tr>
      <tr>
        <td>
          Contraseña:</td>
        <td>
          <asp:TextBox ID="UserPass" TextMode="Password" 
             runat="server" />
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            ControlToValidate="UserPass"
            ErrorMessage="Llenar los campos." 
            runat="server" />
        </td>
      </tr>
      <tr>
        <td>
          Recordarme?</td>
        <td>
          <asp:CheckBox ID="Persist" runat="server" /></td>
      </tr>
    </table>
    <asp:Button ID="Submit1" OnClick="Logon_Click" Text="Login" 
       runat="server" />
    <p>
      <asp:Label ID="Msg" ForeColor="red" runat="server" />
    </p>
  </form>
</body>
</html>