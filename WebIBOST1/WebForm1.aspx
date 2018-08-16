<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebIBOST1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <input id="datepicker" width="200px" />
    <h3>Mask DateTimePicker</h3>
    <input type="text" value="" id="datetimepicker_mask" /><br>
    <br>


    <script>
                    $('#datepicker').datepicker({
                        uiLibrary: 'bootstrap',
                       
                    });
                </script>
    <script>
                    $('#datetimepicker_mask').datepicker({
                        uiLibrary: 'bootstrap',
                       
                    });
                </script>
  
  
    <!-- Latest compiled and minified Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <style>
    .panel-heading .accordion-toggle:after {
    /* symbol for "opening" panels */
    font-family: 'Glyphicons Halflings';  /* essential for enabling glyphicon */
    content: "\e114";    /* adjust as needed, taken from bootstrap.css */
    float: right;        /* adjust as needed */
    color: grey;         /* adjust as needed */
}
.panel-heading .accordion-toggle.collapsed:after {
    /* symbol for "collapsed" panels */
    content: "\e080";    /* adjust as needed, taken from bootstrap.css */
}
</style>

<div class="container">

  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
          Collapsible Group Item #1
        </a>
        </h4>
      </div>
      <div id="collapseOne" class="panel-collapse collapse in">
        <div class="panel-body">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
          on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
          raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
        </div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
          Collapsible Group Item #2
        </a>
        </h4>
      </div>
      <div id="collapseTwo" class="panel-collapse collapse">
        <div class="panel-body">
          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird
          on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table,
          raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
        </div>
      </div>
    </div>
   
  </div>

</div>
<!-- end container -->





<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    

    
   <%-- <script>/*
        window.onerror = function(errorMsg) {
            $('#console').html($('#console').html()+'<br>'+errorMsg)
        }*/
        $('#datetimepicker').datetimepicker({
            dayOfWeekStart: 1,
            lang: 'en',
            disabledDates: ['1986/01/08', '1986/01/09', '1986/01/10'],
            startDate: '1986/01/05'
        });
        $('#datetimepicker').datetimepicker({ value: '2015/04/15 05:03', step: 10 });

        $('.some_class').datetimepicker();

        $('#default_datetimepicker').datetimepicker({
            formatTime: 'H:i',
            formatDate: 'd.m.Y',
            //defaultDate:'8.12.1986', // it's my birthday
            defaultDate: '+03.01.1970', // it's my birthday
            defaultTime: '10:00',
            timepickerScrollbar: false
        });

        $('#datetimepicker10').datetimepicker({
            step: 5,
            inline: true
        });
        $('#datetimepicker_mask').datetimepicker({
            mask: '9999/19/39 29:59'
        });

        $('#datetimepicker1').datetimepicker({
            datepicker: false,
            format: 'H:i',
            step: 5
        });
        $('#datetimepicker2').datetimepicker({
            yearOffset: 222,
            lang: 'ch',
            timepicker: false,
            format: 'd/m/Y',
            formatDate: 'Y/m/d',
            minDate: '-1970/01/02', // yesterday is minimum date
            maxDate: '+1970/01/02' // and tommorow is maximum date calendar
        });
        $('#datetimepicker3').datetimepicker({
            inline: true
        });
        $('#datetimepicker4').datetimepicker();
        $('#open').click(function () {
            $('#datetimepicker4').datetimepicker('show');
        });
        $('#close').click(function () {
            $('#datetimepicker4').datetimepicker('hide');
        });
        $('#reset').click(function () {
            $('#datetimepicker4').datetimepicker('reset');
        });
        $('#datetimepicker5').datetimepicker({
            datepicker: false,
            allowTimes: ['12:00', '13:00', '15:00', '17:00', '17:05', '17:20', '19:00', '20:00'],
            step: 5
        });
        $('#datetimepicker6').datetimepicker();
        $('#destroy').click(function () {
            if ($('#datetimepicker6').data('xdsoft_datetimepicker')) {
                $('#datetimepicker6').datetimepicker('destroy');
                this.value = 'create';
            } else {
                $('#datetimepicker6').datetimepicker();
                this.value = 'destroy';
            }
        });
        var logic = function (currentDateTime) {
            if (currentDateTime && currentDateTime.getDay() == 6) {
                this.setOptions({
                    minTime: '11:00'
                });
            } else
                this.setOptions({
                    minTime: '8:00'
                });
        };
        $('#datetimepicker7').datetimepicker({
            onChangeDateTime: logic,
            onShow: logic
        });
        $('#datetimepicker8').datetimepicker({
            onGenerate: function (ct) {
                $(this).find('.xdsoft_date')
                    .toggleClass('xdsoft_disabled');
            },
            minDate: '-1970/01/2',
            maxDate: '+1970/01/2',
            timepicker: false
        });
        $('#datetimepicker9').datetimepicker({
            onGenerate: function (ct) {
                $(this).find('.xdsoft_date.xdsoft_weekend')
                    .addClass('xdsoft_disabled');
            },
            weekends: ['01.01.2014', '02.01.2014', '03.01.2014', '04.01.2014', '05.01.2014', '06.01.2014'],
            timepicker: false
        });
        var dateToDisable = new Date();
        dateToDisable.setDate(dateToDisable.getDate() + 2);
        $('#datetimepicker11').datetimepicker({
            beforeShowDay: function (date) {
                if (date.getMonth() == dateToDisable.getMonth() && date.getDate() == dateToDisable.getDate()) {
                    return [false, ""]
                }

                return [true, ""];
            }
        });
        $('#datetimepicker12').datetimepicker({
            beforeShowDay: function (date) {
                if (date.getMonth() == dateToDisable.getMonth() && date.getDate() == dateToDisable.getDate()) {
                    return [true, "custom-date-style"];
                }

                return [true, ""];
            }
        });
        $('#datetimepicker_dark').datetimepicker({ theme: 'dark' })


</script>--%>
</asp:Content>
