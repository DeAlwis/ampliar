 
<%@include file='layout/header.jsp'%>

<!-- Start Site Header --><!-- Start Site Header -->
<%@include file='layout/site_header_wrapper.jsp'%>
<!-- END Site Header -->

<div class="spacer-100"></div>
<div class="spacer-100"></div>



<div class="main" role="main">


    <div id="content" class="content full">
        <div class="container">
            <div class="row">
                <!-- Search Filters -->
                <div class="col-md-3 search-filters" id="Search-Filters">
                    <div class="tbsticky filters-sidebar">
                        <h3>Refine Search</h3>
                        <div class="accordion" id="toggleArea">
                            <!-- Filter by Price -->
                            <div class="accordion-group">
                                <div class="accordion-heading togglize"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseEight">Price <i class="fa fa-angle-down"></i> </a> </div>
                                <div id="collapseEight" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Price Min</label>
                                                <input type="text" id="min_price" class="form-control">
                                            </div>
                                            <div class="col-md-6">
                                                <label>Price Max</label>
                                                <input type="text" id="max_price" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group">
                                <div class="accordion-heading togglize"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseSevens">Category<i class="fa fa-angle-down"></i> </a> </div>
                                <div id="collapseSevens" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <div id="category-div" ></div>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group">
                                <div class="accordion-heading togglize"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseSeven">Sub Category<i class="fa fa-angle-down"></i> </a> </div>
                                <div id="collapseSeven" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <div id="sub-category-div" ></div>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group">
                                <div class="accordion-heading togglize"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseNine">District <i class="fa fa-angle-down"></i> </a> </div>
                                <div id="collapseNine" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <div id="district-div" ></div>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group">
                                <div class="accordion-heading togglize"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseTen">City/Town <i class="fa fa-angle-down"></i> </a> </div>
                                <div id="collapseTen" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <div id="local-area-div" ></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="#"  onclick="loadAdList()" class="btn-primary btn-sm btn"><i class="fa fa-folder-o"></i>Search</a>
                    </div>
                </div>

                <!-- Listing Results -->
                <div class="col-md-9 results-container">
                    <div class="results-container-in">
                        <div class="waiting" style="display:none;">
                            <div class="spinner">
                                <div class="rect1"></div>
                                <div class="rect2"></div>
                                <div class="rect3"></div>
                                <div class="rect4"></div>
                                <div class="rect5"></div>
                            </div>
                        </div>

                        <div id="results-holder" class="results-list-view">





                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>





    function loadAdList() {


        var category_select = $("#category-select").val();
        var district_select = $("#district-select").val();
        var local_areas_select = $("#local-areas-select").val();
        var sub_category_select = $("#sub_category-select").val();
        
        var min_price = $("#min_price").val();
        var max_price = $("#max_price").val();
        

        if(category_select == undefined)category_select = '';
        if(district_select == undefined)district_select = '';
        if(local_areas_select == undefined)local_areas_select = '';
        if(sub_category_select == undefined)sub_category_select = '';

        $.ajax({
            url: '/ampliar/services/load_ad_list.jsp?' + 
                    'category_select=' + category_select + 
                    '&district_select=' + district_select + 
                    '&local_areas_select=' + local_areas_select + 
                    '&sub_category_select=' + sub_category_select + 
                    '&min_price=' + min_price + 
                    '&max_price=' + max_price 

        }).done(function (data) {
            $('#results-holder').html(data);
        });
    }



</script>
<script>

    function loadDistrictSelect() {

        $.ajax({
            url: '/ampliar/services/district_select.jsp?'

        }).done(function (data) {
            $('#district-div').html(data);

            loadLocalAreasSelect();
        });

    }

    function loadLocalAreasSelect() {

        var district_select = $('#district-select').val();
        $.ajax({
            url: '/ampliar/services/local_areas_select.jsp?district_select=' + district_select

        }).done(function (data) {
            $('#local-area-div').html(data);
        });

    }

    function loadCategorySelect() {

        $.ajax({
            url: '/ampliar/services/categories_select.jsp?'

        }).done(function (data) {
            $('#category-div').html(data);
            loadSubCategorySelect();
        });

    }

    function loadSubCategorySelect() {

        var category_select = $('#category-select').val();
        $.ajax({
            url: '/ampliar/services/sub_categories_select.jsp?category_select=' + category_select

        }).done(function (data) {
            $('#sub-category-div').html(data);
        });

    }

    window.addEventListener("load", function () {
        loadDistrictSelect();
        loadCategorySelect();
        loadAdList();

    });

</script>
<%@include file='layout/footer.jsp'%>