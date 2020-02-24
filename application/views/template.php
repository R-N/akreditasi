<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Dashboard - Brand</title>
	<?php $this->view("common_css"); ?>
</head>

<body id="page-top">
    <div id="wrapper">
		<?php $this->view("sidebar"); ?>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
				<?php $this->view("topbar"); ?>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"><span>Home</span></a></li>
                                <li class="breadcrumb-item"><a href="#"><span>Library</span></a></li>
                                <li class="breadcrumb-item"><a href="#"><span>Data</span></a></li>
                            </ol>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h3 class="text-dark mb-4">Team</h3>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-header py-3 clickable" href="#table-card-body" data-toggle="collapse" aria-expanded="true" aria-controls="table-card-body" role="button">
                                        <p class="text-primary m-0 font-weight-bold">Tabel</p>
                                </div>
                                <div class="card-body py-3 collapse show" id="table-card-body">
                                    <div class="row">
                                        <div class="col">
                                            <div class="table-responsive datatable export column-search auto-number">
                                                <table class="table table-striped table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th class="shrink">No</th>
                                                            <th>Column 2</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="shrink">Cell 1</td>
                                                            <td>3</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="shrink">Cell 3</td>
                                                            <td>4</td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <td>Total</td>
                                                            <td class="footer-callback" data-operation="sum" data-column="1" data-format="$0">Summary 2</td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <p>Caption</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-header">
                                    <div class="row">
                                        <div class="col">
                                            <a class="d-block" href="#pendukung-table-card-body" data-toggle="collapse" aria-expanded="true" aria-controls="pendukung-table-card-body" role="button">
                                                <p class="text-primary m-0 font-weight-bold">Dokumen Pendukung</p>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body p-0 collapse" id="pendukung-table-card-body">
                                    <div class="row">
                                        <div class="col">
                                            <ul class="nav flex-column hover">
                                                <li class="nav-item"><a class="nav-link active" href="#">First Item</a></li>
                                                <li class="nav-item"><a class="nav-link" href="#">Second Item</a></li>
                                                <li class="nav-item"><a class="nav-link" href="#">Third Item</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-header py-3">
                                    <a class="d-block" href="#info-card-body" data-toggle="collapse" aria-expanded="true" aria-controls="info-card-body" role="button">
                                        <p class="text-primary m-0 font-weight-bold">Info</p>
                                    </a>
                                </div>
                                <div class="card-body py-3 collapse show" id="info-card-body">
                                    <div class="row">
                                        <div class="col">
                                            <p>Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.<br></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-header py-3">
                                    <a class="d-block" href="#menu-card-body" data-toggle="collapse" aria-expanded="true" aria-controls="menu-card-body" role="button">
                                        <p class="text-primary m-0 font-weight-bold">Menu</p>
                                    </a>
                                </div>
                                <div class="card-body collapse show p-0" id="menu-card-body">
                                    <div class="row my-0 py-0">
                                        <div class="col my-0 py-0">
                                            <ul class="nav flex-column no-border my-0 py-0 hover">
                                                <li class="nav-item"><a class="nav-link" href="#">First Item</a></li>
                                                <li class="nav-item"><a class="nav-link" href="#">Second Item</a></li>
                                                <li class="nav-item"><a class="nav-link" href="#">Third Item</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col">
                            <div role="tablist" id="accordion-1">
                                <div class="card shadow">
                                    <div class="card-header" role="tab">
                                        <h6 class="font-weight-bold my-1" href="#"><a data-toggle="collapse" aria-expanded="false" aria-controls="accordion-1 .item-1" href="#accordion-1 .item-1" class="d-block">Accordion Item</a></h6>
                                    </div>
                                    <div class="collapse item-1" role="tabpanel" data-parent="#accordion-1">
                                        <div class="card-body">
                                            <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card shadow">
                                    <div class="card-header" role="tab">
                                        <h6 class="font-weight-bold m-0 my-1"><a data-toggle="collapse" aria-expanded="false" aria-controls="accordion-1 .item-2" href="#accordion-1 .item-2" class="d-block">Accordion Item</a></h6>
                                    </div>
                                    <div class="collapse item-2" role="tabpanel" data-parent="#accordion-1">
                                        <div class="card-body">
                                            <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			<?php $this->view("footer"); ?>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a></div>
		<?php $this->view("common_js"); ?>
</body>

</html>