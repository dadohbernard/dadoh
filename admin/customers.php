<?php session_start();
if(empty($_SESSION['auth_username'])) { header("Location: ../index.php");}
require_once ('../connection/connection.php');
include("language.php");
if(isset($_GET['c']) && !empty($_GET['c'])){
	$c=strip_tags(trim($_GET['c']));
	$del = "DELETE FROM customers WHERE cus_id='$c'";
	if ($conn->query($del) === TRUE) {
		header("location: customers.php?d=del");		
	} else {
		header("location: customers.php?d=n");		
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
		<!-- Meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- Title -->
		<title><?php echo $lang['Customers'];?></title>

		<!-- adaptinventory CSS -->
		<link rel="stylesheet" href="../wms/bootstrap4/css/bootstrap.min.css">
		<link rel="stylesheet" href="../wms/themify-icons/themify-icons.css">
		<link rel="stylesheet" href="../wms/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../wms/animate.css/animate.min.css">
		<link rel="stylesheet" href="../wms/jscrollpane/jquery.jscrollpane.css">
		<link rel="stylesheet" href="../wms/waves/waves.min.css">
		<link rel="stylesheet" href="../wms/switchery/dist/switchery.min.css">
		<link rel="stylesheet" href="../wms/DataTables/css/dataTables.bootstrap4.min.css">
		<link rel="stylesheet" href="../wms/DataTables/Responsive/css/responsive.bootstrap4.min.css">
		<link rel="stylesheet" href="../wms/DataTables/Buttons/css/buttons.dataTables.min.css">
		<link rel="stylesheet" href="../wms/DataTables/Buttons/css/buttons.bootstrap4.min.css">
        <link rel="stylesheet" href="../wms/toastr/toastr.min.css">

		<!-- Neptune CSS -->
		<link rel="stylesheet" href="css/core.css">

		<!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body class="fixed-sidebar fixed-header skin-3 content-appear">
		<div class="wrapper">

			<!-- Preloader -->
			<div class="preloader"></div>

			<!-- Sidebar -->
			<div class="site-overlay"></div>
			
			<?php include("sidebar.php");?>
			<!-- Sidebar second -->
			<?php include("rightsidebar.php");?>

			<!-- Template options -->
			<?php include("template-options-menu.php");?>

			<!-- Header -->
			<?php include("headermenu.php");?>

			<div class="site-content">
				<!-- Content -->
				<div class="content-area py-1">
					<div class="container-fluid">
						<h4><?php echo $lang['CustomersList'];?></h4>
						<ol class="breadcrumb no-bg mb-1">
							<li class="breadcrumb-item"><a href="index.php"><?php echo $lang['Dashboard'];?></a></li>							
							<li class="breadcrumb-item active"><?php echo $lang['CustomersList'];?></li>
						</ol>
						<div class="box box-block bg-white">
							<h5 class="mb-1"><?php echo $lang['ExportingCustomersData'];?></h5>
							<table class="table table-striped table-bordered dataTable" id="table-2">
								<thead>
									<tr>
										<th><?php echo $lang['Customers'];?></th>
										<th><?php echo $lang['Mobile'];?></th>
										<th><?php echo $lang['Email'];?></th>
										<th><?php echo $lang['BillingAddress'];?></th>
										<th><?php echo $lang['Option'];?></th>
									</tr>
								</thead>
								<tbody>
                                <?php 
								$sql = "SELECT * FROM customers";
								$result = $conn->query($sql);
								
								if ($result->num_rows > 0) 
								{
									// output data of each row
									while($row = $result->fetch_assoc()) 
									{ ?>		
									<tr>
										<td><?php echo $row['cus_name'];?></td>
										<td><?php echo $row['cus_mobile'];?></td>
										<td><?php echo $row['cus_email'];?></td>
										<td><?php echo $row['cus_address'];?></td>
										<td><a class="btn btn-success btn-sm" href="#" data-toggle="modal" data-target="#cusInfo" data-whatever="<?php echo $row['cus_id'];?>" title="View"><i class="ti-eye mr-0-5"></i><?php echo $lang['View'];?></a> 
                                        <?php if(!empty($_SESSION['user_type_id']) && $_SESSION['user_type_id']=='1') { ?> 
                                        <a class="btn btn-secondary btn-sm" href="edit-customer.php?c=<?php echo $row['cus_id'];?>" title="Edit"><i class="ti-pencil mr-0-5"></i><?php echo $lang['Edit'];?></a> 
                                        <a class="btn btn-danger btn-sm" href="customers.php?c=<?php echo $row['cus_id'];?>" title="Delete"><i class="ti-trash mr-0-5"></i><?php echo $lang['Delete'];?></a>
                                       <?php } ?>
                                        </td>
									</tr>
                                  <?php }
								} ?>																	
								</tbody>
								<tfoot>
									<tr>
										<th><?php echo $lang['Customers'];?></th>
										<th><?php echo $lang['Mobile'];?></th>
										<th><?php echo $lang['Email'];?></th>
										<th><?php echo $lang['BillingAddress'];?></th>
										<th><?php echo $lang['Option'];?></th>
									</tr>
								</tfoot>
							</table>
                            
                            <div class="modal fade" id="cusInfo" tabindex="-1" role="dialog" aria-labelledby="Customer Information" aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="exampleModalLabel"><?php echo $lang['CustomerInformation'];?></h4>
										</div>
										<div class="modal-body"></div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>											
										</div>
									</div>
								</div>
							</div>
						</div>			
						
					</div>
				</div>
				<!-- Footer -->
				<?php include("footermenu.php");?>
			</div>

		</div>

		<!-- adaptinventory JS -->
		<script type="text/javascript" src="../wms/jquery/jquery-1.12.3.min.js"></script>
		<script type="text/javascript" src="../wms/tether/js/tether.min.js"></script>
		<script type="text/javascript" src="../wms/bootstrap4/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../wms/detectmobilebrowser/detectmobilebrowser.js"></script>
		<script type="text/javascript" src="../wms/jscrollpane/jquery.mousewheel.js"></script>
		<script type="text/javascript" src="../wms/jscrollpane/mwheelIntent.js"></script>
		<script type="text/javascript" src="../wms/jscrollpane/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" src="../wms/jquery-fullscreen-plugin/jquery.fullscreen-min.js"></script>
		<script type="text/javascript" src="../wms/waves/waves.min.js"></script>
		<script type="text/javascript" src="../wms/switchery/dist/switchery.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/js/dataTables.bootstrap4.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/Responsive/js/dataTables.responsive.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/Responsive/js/responsive.bootstrap4.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/Buttons/js/dataTables.buttons.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/Buttons/js/buttons.bootstrap4.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/JSZip/jszip.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/pdfmake/build/pdfmake.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/pdfmake/build/vfs_fonts.js"></script>
		<script type="text/javascript" src="../wms/DataTables/Buttons/js/buttons.html5.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/Buttons/js/buttons.print.min.js"></script>
		<script type="text/javascript" src="../wms/DataTables/Buttons/js/buttons.colVis.min.js"></script>
        <script type="text/javascript" src="../wms/toastr/toastr.min.js"></script>
		<script type="text/javascript" src="modal/js/customer_info.js"></script>
		<!-- Neptune JS -->
		<script type="text/javascript" src="js/app.js"></script>
		<script type="text/javascript" src="js/demo.js"></script>
		<script type="text/javascript" src="js/tables-datatable.js"></script>
        <?php if(isset($_GET['d']) && $_GET['d']=='del'){ ?>
        <script type="text/javascript">
			$(document).ready(function(){			
			toastr.options = {
			positionClass: 'toast-top-right'
			};
			toastr.error('Record deleted successfully!');
			
			});	
		</script>
      <?php } 
	  if(isset($_GET['d']) && $_GET['d']=='n'){ ?>
        <script type="text/javascript">
			$(document).ready(function(){			
			toastr.options = {
			positionClass: 'toast-top-right'
			};
			toastr.error('Error deleting record!');
			
			});	
		</script>
        <?php } ?>
	</body>

</html>