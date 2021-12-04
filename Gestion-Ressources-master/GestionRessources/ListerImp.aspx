﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListerImp.aspx.cs" Inherits="GestionRessources.ListerImp" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/recherche.css" rel="stylesheet" />
    <link href="css/editable.css" rel="stylesheet" />
    <link href="css/RespR.css" rel="stylesheet" />
    <link href="css/listerOrdi.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Arimo' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Hind:300' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.3/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <script  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
     <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <title></title>
    </head>
<body style="background:url(../images/lister.jpg) no-repeat; background-size : cover ;">
    <form id="form1" runat="server">
   <nav id="mainNav" style="background-color: #570880;">
      <ul>
        <li><a href="ResponsableR.aspx"><i class="icon-home"></i><img src="../images/homei.png" /><br />Acceuil</a></li>
        <li><a href="#"><i class="icon-laptop"></i><img src="../images/lap.png" /><br />Ordinateurs</a>
          <ul class="sub-menu">
            <li><a href="AjouterOrdi.aspx"><i class="icon-plane"></i> Ajouter Ordinateur</a></li>
            <li><a href="ListerOrdi.aspx"><i class="icon-facetime-video"></i> Liste des Ordinateurs</a></li>
          </ul>
        </li>
          <li><a href="#"><i class="icon-print"></i><img src="../images/print.png" /><br />Imprimante</a>
          <ul class="sub-menu">
            <li><a href="AjouterImp.aspx">Ajouter Imprimante</a></li>
            <li><a href="ListerImp.aspx"> Liste des Imprimantes</a></li>
          </ul>
        </li>
           <li><a href="#"><i class="icon-print"></i><img src="../images/fourni.png" /><br />Fournisseur</a>
          <ul class="sub-menu">
            <li><a href="AjouterFournisseur.aspx">Ajouter Fournisseur</a></li>
            <li><a href="ListerFournisseur.aspx"> Liste des Fournisseurs</a></li>
          </ul>
        </li>
           <li><a href="AppelDoffre.aspx"><i class="icon-twitter"></i><img src="../images/exit.png" /><br />Appel d'offre</a></li>
        <li><a href="Home.aspx"><i class="icon-twitter"></i><img src="../images/exit.png" /><br />Deconnexion</a></li>
      </ul><div class="clr" ></div>
    </nav> 
    <div style=" height: 100%; width: 100%;">
				<div class="container" id="editableTable">

					<div class="row">
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="form-group pull-right" style="text-align:center">
					<br />
                                	<br />	<br />
							</div>
							<span class="counter pull-right">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="200px" Width="1000px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="marque" HeaderText="marque" SortExpression="marque" />
                                    <asp:BoundField DataField="resolution" HeaderText="resolution" SortExpression="resolution" />
                                    <asp:BoundField DataField="vitesse" HeaderText="vitesse" SortExpression="vitesse" />
                                    <asp:BoundField DataField="idFournis" HeaderText="idFournis" SortExpression="idFournis" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Impri] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Impri] ([marque], [resolution], [vitesse], [idFournis]) VALUES (@marque, @resolution, @vitesse, @idFournis)" SelectCommand="SELECT * FROM [Impri]" UpdateCommand="UPDATE [Impri] SET [marque] = @marque, [resolution] = @resolution, [vitesse] = @vitesse, [idFournis] = @idFournis WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="marque" Type="String" />
                                    <asp:Parameter Name="resolution" Type="String" />
                                    <asp:Parameter Name="vitesse" Type="String" />
                                    <asp:Parameter Name="idFournis" Type="Int32" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="marque" Type="String" />
                                    <asp:Parameter Name="resolution" Type="String" />
                                    <asp:Parameter Name="vitesse" Type="String" />
                                    <asp:Parameter Name="idFournis" Type="Int32" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            </span>
						</div>
					</div>
				</div>
			</div>

<script>
        (function($, window, document, undefined) {
	  var pluginName = "editable",
	    defaults = {
            keyboard: true,
	      dblclick: true,
	      button: true,
	      buttonSelector: ".edit",
	      maintainWidth: true,
	      dropdowns: {},
	      edit: function() {},
	      save: function() {},
	      cancel: function() {}
        };

	  function editable(element, options) {
            this.element = element;
        this.options = $.extend({}, defaults, options);

	    this._defaults = defaults;
	    this._name = pluginName;

	    this.init();
	  }

	  editable.prototype = {
            init: function() {
            this.editing = false;

        if (this.options.dblclick) {
            $(this.element)
                .css('cursor', 'pointer')
                .bind('dblclick', this.toggle.bind(this));
        }

	      if (this.options.button) {
            $(this.options.buttonSelector, this.element)
                .bind('click', this.toggle.bind(this));
        }
	    },

	    toggle: function(e) {
            e.preventDefault();

        this.editing = !this.editing;

	      if (this.editing) {
            this.edit();
        } else {
            this.save();
        }
	    },

	    edit: function() {
	      var instance = this,
	        values = {};

	      $('td[data-field]', this.element).each(function() {
	        var input,
	          field = $(this).data('field'),
	          value = $(this).text(),
	          width = $(this).width();

	        values[field] = value;

	        $(this).empty();

	        if (instance.options.maintainWidth) {
            $(this).width(width);
        }

	        if (field in instance.options.dropdowns) {
            input = $('<select></select>');

        for (var i = 0; i < instance.options.dropdowns[field].length; i++) {
            $('<option></option>')
                .text(instance.options.dropdowns[field][i])
                .appendTo(input);
        };

	          input.val(value)
	            .data('old-value', value)
	            .dblclick(instance._captureEvent);
	        } else {
            input = $('<input type="text" />')
                .val(value)
                .data('old-value', value)
                .dblclick(instance._captureEvent);
        }

	        input.appendTo(this);

	        if (instance.options.keyboard) {
            input.keydown(instance._captureKey.bind(instance));
        }
	      });

	      this.options.edit.bind(this.element)(values);
	    },

	    save: function() {
	      var instance = this,
	        values = {};

	      $('td[data-field]', this.element).each(function() {
	        var value = $(':input', this).val();

	        values[$(this).data('field')] = value;

	        $(this).empty()
	          .text(value);
	      });

	      this.options.save.bind(this.element)(values);
	    },

	    cancel: function() {
	      var instance = this,
	        values = {};

	      $('td[data-field]', this.element).each(function() {
	        var value = $(':input', this).data('old-value');

	        values[$(this).data('field')] = value;

	        $(this).empty()
	          .text(value);
	      });

	      this.options.cancel.bind(this.element)(values);
	    },

	    _captureEvent: function(e) {
            e.stopPropagation();
        },

	    _captureKey: function(e) {
	      if (e.which === 13) {
            this.editing = false;
        this.save();
	      } else if (e.which === 27) {
            this.editing = false;
        this.cancel();
	      }
	    }
	  };

	  $.fn[pluginName] = function(options) {
	    return this.each(function() {
	      if (!$.data(this, "plugin_" + pluginName)) {
            $.data(this, "plugin_" + pluginName,
                new editable(this, options));
        }
	    });
	  };

	})(jQuery, window, document);

	editTable();

	//custome editable starts
	function editTable(){

            $(function () {
                var pickers = {};

                $('table tr').editable({
                    dropdowns: {
                        role: ['Secrétaire', 'Utilisateur Courrier Départ', 'Utilisateur Courrier Arrivé']
                    },
                    edit: function (values) {
                        $(".edit i", this)
                            .removeClass('fa-pencil')
                            .addClass('fa-save')
                            .attr('title', 'Save');

                        pickers[this] = new Pikaday({
                            field: $("td[data-field=birthday] input", this)[0],
                            format: 'MMM D, YYYY'
                        });
                    },
                    save: function (values) {
                        $(".edit i", this)
                            .removeClass('fa-save')
                            .addClass('fa-pencil')
                            .attr('title', 'Edit');

                        if (this in pickers) {
                            pickers[this].destroy();
                            delete pickers[this];
                        }
                    },
                    cancel: function (values) {
                        $(".edit i", this)
                            .removeClass('fa-save')
                            .addClass('fa-pencil')
                            .attr('title', 'Edit');

                        if (this in pickers) {
                            pickers[this].destroy();
                            delete pickers[this];
                        }
                    }
                });
            });
	  
        }

	$(".add-row").click(function(){
            $("#editableTable").find("tbody tr:first").before("<tr><td data-field='name'></td><td data-field='name'></td><td data-field='name'></td><td data-field='name'></td><td><a class='button button-small edit' title='Edit'><i class='fa fa-pencil'></i></a> <a class='button button-small' title='Delete'><i class='fa fa-trash'></i></a></td></tr>");   
        editTable();
	  setTimeout(function(){
            $("#editableTable").find("tbody tr:first td:last a[title='Edit']").click(); 
        }, 200);

	  setTimeout(function(){
            $("#editableTable1").find("tbody tr:first td:last a[title='Edit1']").click(); 
        }, 200);

	  setTimeout(function(){
            $("#editableTable2").find("tbody tr:first td:last a[title='Edit2']").click(); 
        }, 200);

	  setTimeout(function(){
            $("#editableTable3").find("tbody tr:first td:last a[title='Edit3']").click(); 
        }, 200);


	  setTimeout(function(){
            $("#editableTable").find("tbody tr:first td:first input[type='text']").focus();
        }, 300);

	   $("#editableTable").find("a[title='Delete']").unbind('click').click(function(e){
            $(this).closest("tr").remove();
        });

	});

	function myFunction() {

        }

        $("#editableTable").find("a[title='Delete']").click(function(e){  
	  var x;
	    if (confirm("Etes-vous sûr de vouloir supprimer cette ligne?") == true) {
            $(this).closest("tr").remove();
        } else {

        }
        });

</script>
    <script>
        $(document).ready(function() {
            $(".search").keyup(function () {
                var searchTerm = $(".search").val();
                var listItem = $('.results tbody').children('tr');
                var searchSplit = searchTerm.replace(/ /g, "'):containsi('")

                $.extend($.expr[':'], {
                    'containsi': function (elem, i, match, array) {
                        return (elem.textContent || elem.innerText || '').toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
                    }
                });

                $(".results tbody tr").not(":containsi('" + searchSplit + "')").each(function (e) {
                    $(this).attr('visible', 'false');
                });

                $(".results tbody tr:containsi('" + searchSplit + "')").each(function (e) {
                    $(this).attr('visible', 'true');
                });

                var jobCount = $('.results tbody tr[visible="true"]').length;
                $('.counter').text(jobCount + ' item');

                if (jobCount == '0') { $('.no-result').show(); }
                else { $('.no-result').hide(); }
            });
        });
        function redirect() {
    location.href = 'AjouterImp.aspx';
    }
</script>
    </form>
</body>
</html>

