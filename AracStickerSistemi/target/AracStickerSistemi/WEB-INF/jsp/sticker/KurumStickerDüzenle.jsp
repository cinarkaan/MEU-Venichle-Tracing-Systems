<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Kaan
  Date: 7.08.2020
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/webjars/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <title>KurumStickerDüzenle</title>
</head>
<body style="background-color: #d2d6de">
<div style="text-align: center">
    <h2 class="h2">DÜZENLE</h2>
</div>
<div class="container-lg" style="text-align: center; margin-top: 50px;">
    <form:form action="${pageContext.request.contextPath}/editKurumStickerSave" method="post" modelAttribute="updateKurumSticker">
        <div class="row">
            <div class="col-sm-6">
                <div class="jumbotron">
                    <div class="row justify-content-center align-items-center">
                        <h3 class="h3" style="text-align: center">TAŞIT BİLGİLERİ</h3>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="col-form-label">ARAC TURU</label>
                            <form:select cssClass="form-control" path="aracTuru" >
                                <form:option value="NONE" label="Select"/>
                                <form:options items="${aracturlistesi}"/>
                            </form:select><br><br>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">STİCKER NO</label>
                            <form:input cssClass="form-control" placeholder="Stickerno" path="stickerNo"/>
                            <form:errors  path="stickerNo" cssClass="text-danger"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">ARACSAHİBİ</label>
                            <form:input cssClass="form-control" placeholer="AracSahibinAdiSoyadi" path="aracSahibininAdiSoyad"/>
                            <form:errors  path="aracSahibininAdiSoyad" cssClass="text-danger"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label  class="col-form-label">RUHSATSAHİBİ</label>
                            <form:input cssClass="form-control" path="ruhsatSahibininAdiSoyad"/>
                            <form:errors  path="ruhsatSahibininAdiSoyad" cssClass="text-danger"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">PLAKA</label>
                            <form:input cssClass="form-control" placeholder="Plaka" path="plaka"/>
                            <form:errors  path="plaka" cssClass="text-danger"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">MARKA</label>
                            <form:input cssClass="form-control" placeholder="Marka" path="aracMarka"/>
                            <form:errors  path="aracMarka" cssClass="text-danger"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="col-form-label">RENGİ</label>
                            <form:input cssClass="form-control" placeholder="Rengi" path="aracRengi"/>
                            <form:errors  path="aracRengi" cssClass="text-danger"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="jumbotron">
                    <div class="row justify-content-center align-items-center">
                        <h3 class="h3" style="text-align: center">KURUM BİLGİLERİ</h3>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="col-form-label">AD SOYAD</label>
                            <form:input cssClass="form-control" placeholder="Adsoyad" path="adSoyad"/>
                            <form:errors  path="adSoyad" cssClass="text-danger"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">KAMPUS</label>
                            <form:select cssClass="form-control" path="bulunduguKampus">
                                <form:option value="NONE" label="Select"/>
                                <form:options items="${kampusList}"/>
                            </form:select>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">BİRİM ADI</label>
                            <form:select cssClass="form-control" path="kampusBirimAdi">
                                <form:option value="NONE" label="Select"/>
                                <form:options items="${kampusBirimList}"/>
                            </form:select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="col-form-label">GOREV BİRİMİ</label>
                            <form:select cssClass="form-control" path="gorevYaptigiBirim">
                                <form:option value="NONE" label="Select"/>
                                <form:options items="${Gorev}"/>
                            </form:select>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">KURUM SİCİL</label>
                            <form:input cssClass="form-control" placeholder="Kurumsicil" path="kurumSicil"/>
                            <form:errors  path="kurumSicil" cssClass="text-danger"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">IC HAT</label>
                            <form:input cssClass="form-control" placeholder="Ichat" path="icHat"/>
                            <form:errors  path="icHat" cssClass="text-danger"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="col-form-label">FİRMA</label>
                            <form:input cssClass="form-control" placeholder="Firma" path="firma"/>
                            <form:errors  path="firma" cssClass="text-danger"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">TELEFONU</label>
                            <form:input cssClass="form-control" placeholder="Telefon" path="cepTelefonu"/>
                            <form:errors  path="cepTelefonu" cssClass="text-danger"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">EPOSTA</label>
                            <form:input cssClass="form-control" placeholder="Eposta" path="eposta"/>
                            <form:errors  path="eposta" cssClass="text-danger"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <label class="col-form-label">TC</label>
                            <form:input cssClass="form-control" placeholder="Tc" path="tcNo"/>
                            <form:errors  path="tcNo" cssClass="text-danger"/>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">KADRO</label>
                            <form:select cssClass="form-control" path="kadroBirimi">
                                <form:option value="NONE" label="Select"/>
                                <form:options items="${kampusKadroBirimList}"/>
                            </form:select>
                        </div>
                        <div class="col-sm-4">
                            <label class="col-form-label">UNVAN</label>
                            <form:select cssClass="form-control" path="unvan">
                                <form:option value="NONE" label="Select"/>
                                <form:options items="${Unvan}"/>
                            </form:select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <c:if test="${not empty error}">
                <p class="text-danger">${error}</p>
            </c:if>
        </div>
        <div style="text-align: center">
            <input type="submit" class="btn btn-primary" style="text-align: center" value="Kaydet"/>
        </div>
    </form:form>

</div>

</body>
</html>
