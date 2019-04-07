/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function getAccounts(contextpath)
{
  $.ajax({
        type: "GET",
        url: contextpath + "/GetValues",
        dataType: "json",
        success: function (data) {
            alert(data);
            $.each(data.account, function (i, obj)
            {
                alert(obj.accountID);
                var div_data = "<option value=" + obj.accountID + ">" + obj.accountID + "</option>";
                alert(div_data);
                $(div_data).appendTo('#accountID');
            });
        }
       

});
}