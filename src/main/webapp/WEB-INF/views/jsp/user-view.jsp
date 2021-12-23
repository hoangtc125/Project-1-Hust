<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid bg-form">
		<c:url value="/newsSoftDelete" var="urlSoftDelete" />
		<c:url value="/news-list-deleted" var="urlListSoftDeleted" />
		<c:url value="/news-view" var="urlView" />
        <div class="row justify-content-center">
            <div class="col-md-3 col-sm-6 col-xs-12 login-container infor">
                <form>
                    <h1 class="login-title mb-4">Information</h1>
                    <form>
                    <div style="margin-left: 50px;">
                        <div class="form-group row mb-3">
                            <label for="name" class="col-sm-4 col-form-label">Name:</label>
                            <div class="col-sm-8">
                            ${user.name}
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="mssv" class="col-sm-4 col-form-label">MSSV:</label>
                            <div class="col-sm-8">
                             ${user.mssv}
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="Class" class="col-sm-4 col-form-label">Class:</label>
                            <div class="col-sm-8">
                              ${user.clazz}
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="username" class="col-sm-4 col-form-label">Username:</label>
                            <div class="col-sm-8">
                              ${user.username}
                            </div>
                        </div>
                        <div class="form-group row mb-3">
                            <label for="coin" class="col-sm-4 col-form-label">Coin:</label>
                            <div class="col-sm-8">
                              ${user.coin}
                            </div>
                        </div>
                        </div>
                    </form>

                </form>
            </div>
        </div>
    </div>