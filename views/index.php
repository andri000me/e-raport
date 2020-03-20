<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Blank Page</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?=base_url('assets/');?>bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?=base_url('assets/');?>bower_components/font-awesome/css/font-awesome.min.css">
    <!-- DataTables -->
    <link rel="stylesheet"
        href="<?=base_url('assets/');?>bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?=base_url('assets/');?>dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
    folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<?=base_url('assets/');?>dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition skin-blue fixed sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">

        <header class="main-header">
            <!-- Logo -->
            <a href="<?=base_url('assets/');?>index2.html" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>E</b>R</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>E</b>-Raport</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope-o"></i>
                                <span class="label label-success">4</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="<?=base_url('assets/');?>dist/img/user2-160x160.jpg"
                                                        class="img-circle" alt="User Image">
                                                </div>
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <!-- end message -->
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <!-- Notifications: style can be found in dropdown.less -->
                        <li class="dropdown notifications-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="label label-warning">10</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 10 notifications</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">View all</a></li>
                            </ul>
                        </li>
                        <!-- Tasks: style can be found in dropdown.less -->
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-flag-o"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 9 tasks</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-aqua" style="width: 20%"
                                                        role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                                        aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu" style="background-color:red;">
                            <a href="<?=base_url('auth/logout');?>">
                                <i class="fa fa-power-off"></i>
                                <span class="hidden-xs">KELUAR</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <!-- =============================================== -->

        <!-- Left side column. contains the sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="<?=base_url('assets/');?>dist/img/user2-160x160.jpg" class="img-circle"
                            alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>Alexander Pierce</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li class="header">MAIN NAVIGATION</li>
                    <li <?=isset($dashboard)?'class="active"':'';?>>
                        <a href="<?=base_url('dashboard');?>">
                            <i class="fa fa-home"></i> <span>Beranda</span>
                        </a>
                    </li>
                    <li class="treeview <?=isset($configuration)?'active':'';?>">
                        <a href="#">
                            <i class="fa fa-cogs"></i>
                            <span>Konfigurasi</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li <?=isset($academic_year)?'class="active"':'';?>><a
                                    href="<?=base_url('configuration/academic_year');?>"><i
                                        class="fa fa-angle-double-right"></i> Tahun
                                    Pelajaran</a></li>
                            <li <?=isset($date_print)?'class="active"':'';?>><a
                                    href="<?=base_url('configuration/date_print');?>"><i
                                        class="fa fa-angle-double-right"></i> Tanggal Cetak</a>
                            </li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-folder"></i>
                            <span>Data Master</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="<?=base_url('masterdata/guru');?>"><i class="fa fa-angle-double-right"></i>
                                    Guru</a></li>
                            <li><a href="<?=base_url('masterdata/siswa');?>"><i class="fa fa-angle-double-right"></i>
                                    Siswa</a></li>
                            <li><a href="<?=base_url('masterdata/kelas');?>"><i class="fa fa-angle-double-right"></i>
                                    Kelas</a></li>
                            <li><a href="<?=base_url('masterdata/mapel');?>"><i class="fa fa-angle-double-right"></i>
                                    Mata Pelajaran</a>
                            </li>
                            <li><a href="<?=base_url('masterdata/user');?>"><i class="fa fa-angle-double-right"></i>
                                    Pengguna</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-cog"></i>
                            <span>Pengaturan</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="<?=base_url('setting/ngajar');?>"><i class="fa fa-angle-double-right"></i>
                                    Mengajar</a></li>
                            <li><a href="<?=base_url('setting/kelas');?>"><i class="fa fa-angle-double-right"></i>
                                    Kelas</a></li>
                            <li><a href="<?=base_url('setting/wali_kelas');?>"><i class="fa fa-angle-double-right"></i>
                                    Wali Kelas</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="<?=base_url('siswa');?>">
                            <i class="fa fa-users"></i> <span>Siswa Aktif</span>
                        </a>
                    </li>
                    <li>
                        <a href="<?=base_url('nilai');?>">
                            <i class="fa fa-edit"></i> <span>Input Nilai</span>
                        </a>
                    </li>
                    <li>
                        <a href="<?=base_url('raport');?>">
                            <i class="fa fa-print"></i> <span>Cetak Raport</span>
                        </a>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-wrench"></i> <span>Maintenance</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="<?=base_url('maintenance/backup_database');?>"><i
                                        class="fa fa-angle-double-right"></i> Backup
                                    Database</a></li>
                            <li><a href="<?=base_url('maintenance/backup_apps');?>"><i
                                        class="fa fa-angle-double-right"></i> Backup
                                    Application</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- =============================================== -->

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <?php $this->load->view($content);?>
        </div>
        <!-- /.content-wrapper -->

        <footer class="main-footer">
            <div class="pull-right hidden-xs">
                Page rendered in <strong>{elapsed_time}</strong> seconds.
            </div>
            <strong>Copyright &copy; <?=date('Y');?> <a href="https://nokencode.com">Nokencode</a>.</strong> All rights
            reserved.
        </footer>
    </div>
    <!-- ./wrapper -->

    <!-- jQuery 3 -->
    <script src="<?=base_url('assets/');?>bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="<?=base_url('assets/');?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- DataTables -->
    <script src="<?=base_url('assets/');?>bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<?=base_url('assets/');?>bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="<?=base_url('assets/');?>bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="<?=base_url('assets/');?>bower_components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="<?=base_url('assets/');?>dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<?=base_url('assets/');?>dist/js/demo.js"></script>
    <script>
    $(document).ready(function() {
        $('.datatable').DataTable({
            'paging': true,
            'lengthChange': true,
            'searching': true,
            'ordering': false,
            'info': true,
            'autoWidth': false
        });
    })
    </script>
</body>

</html>