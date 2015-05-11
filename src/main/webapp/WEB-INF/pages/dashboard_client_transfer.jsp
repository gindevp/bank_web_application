<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>
        <spring:message code="application.name"/>
    </title>
</head>
<body>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->


        <!-- Main content -->
        <section class="content">
            <div class="row">
                <!-- left column -->
                <div class="col-md-6">
                    <!-- general form elements -->
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">Перевод средств</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <form role="form" class="operation" action="/dashboard/client/transfer/send">
                            <div class="box-body">
                                <!-- select -->
                                <div class="form-group">
                                    <label>Выберите свой счет</label>
                                    <select class="form-control" name="accountSenderId">
                                        <option disabled selected>Выберите свой счет</option>
                                        <c:forEach items="${user.accounts}" var="account">
                                            <option value="${account.id}">${account.id} ${account.currency}</option>
                                        </c:forEach>
                                    </select>

                                </div>

                                <div class="form-group">
                                    <label for="accountPayee">Счет получателя</label>
                                    <input type="number" class="form-control" id="accountPayee" name="accountPayee" placeholder="Введит счет"/>
                                </div>

                                <div class="form-group">
                                    <label for="quantityOfMoney">Сумма</label>
                                    <input type="number" step="0.01" class="form-control" id="quantityOfMoney" name="quantityOfMoney" placeholder="Введит сумму">
                                </div>

                            </div><!-- /.box-body -->

                            <div class="box-footer">
                                <button type="submit" class="btn btn-primary">Перевести</button>
                            </div>
                        </form>
                    </div><!-- /.box -->
                </div>
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->


    <!-- add class .active for li[num] in sidebar-menu -->
    <input id="meta.page.li.num" type="hidden" value="2" />

</body>

<div id="javascript">
    <script>
//        $(function($){
//            $("#accountPayee").mask("99999-999-9-999999999",{placeholder:"99999-999-9-999999999"});
//        });
    </script>
</div>

</html>