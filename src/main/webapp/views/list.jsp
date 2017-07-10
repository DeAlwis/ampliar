 
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
                            <!-- Filter by Year -->
                            <div class="accordion-group panel">
                                <div class="accordion-heading togglize"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseOne">Year<i class="fa fa-angle-down"></i> </a> </div>
                                <div id="collapseOne" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <div class="form-inline">
                                            <div class="form-group">
                                                <label>Min Year</label>
                                                <select name="Min Year" class="form-control selectpicker">
                                                    <option selected>Any</option>
                                                    <option>2005</option>
                                                    <option>2006</option>
                                                    <option>2007</option>
                                                    <option>2008</option>
                                                    <option>2009</option>
                                                    <option>2010</option>
                                                    <option>2011</option>
                                                    <option>2012</option>
                                                    <option>2013</option>
                                                    <option>2014</option>
                                                </select>
                                            </div>
                                            <div class="form-group last-child">
                                                <label>Max Year</label>
                                                <select name="Max Year" class="form-control selectpicker">
                                                    <option selected>Any</option>
                                                    <option>2005</option>
                                                    <option>2006</option>
                                                    <option>2007</option>
                                                    <option>2008</option>
                                                    <option>2009</option>
                                                    <option>2010</option>
                                                    <option>2011</option>
                                                    <option>2012</option>
                                                    <option>2013</option>
                                                    <option>2014</option>
                                                </select>
                                            </div>
                                            <button type="submit" class="btn btn-default btn-sm pull-right">Filter</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Filter by Make -->
                            <div class="accordion-group panel">
                                <div class="accordion-heading togglize"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseTwo">Make<i class="fa fa-angle-down"></i> </a> </div>
                                <div id="collapseTwo" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <ul class="filter-options-list list-group">
                                            <li class="list-group-item"><span class="badge">4</span><a href="#">Bentley</a></li>
                                            <li class="list-group-item"><span class="badge">23</span><a href="#">Nissan</a></li>
                                            <li class="list-group-item"><span class="badge">41</span><a href="#">Mercedes</a></li>
                                            <li class="list-group-item"><span class="badge">6</span><a href="#">Ford</a></li>
                                            <li class="list-group-item"><span class="badge">54</span><a href="#">Honda</a></li>
                                            <li class="list-group-item"><span class="badge">9</span><a href="#">Mazda</a></li>
                                            <li class="list-group-item"><span class="badge">38</span><a href="#">Toyota</a></li>
                                            <li class="list-group-item"><span class="badge">45</span><a href="#">BMW</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Filter by Price -->
                            <div class="accordion-group">
                                <div class="accordion-heading togglize"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseEight">Price <i class="fa fa-angle-down"></i> </a> </div>
                                <div id="collapseEight" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <div class="form-inline">
                                            <div class="form-group">
                                                <label>Price Min</label>
                                                <select name="Min Price" class="form-control selectpicker">
                                                    <option selected>Any</option>
                                                    <option>LKR10000</option>
                                                    <option>LKR20000</option>
                                                    <option>LKR30000</option>
                                                    <option>LKR40000</option>
                                                    <option>LKR50000</option>
                                                    <option>LKR60000</option>
                                                    <option>LKR70000</option>
                                                    <option>LKR80000</option>
                                                    <option>LKR90000</option>
                                                    <option>LKR100000</option>
                                                </select>
                                            </div>
                                            <div class="form-group last-child">
                                                <label>Price Max</label>
                                                <select name="Max Price" class="form-control selectpicker">
                                                    <option selected>Any</option>
                                                    <option>LKR10000</option>
                                                    <option>LKR20000</option>
                                                    <option>LKR30000</option>
                                                    <option>LKR40000</option>
                                                    <option>LKR50000</option>
                                                    <option>LKR60000</option>
                                                    <option>LKR70000</option>
                                                    <option>LKR80000</option>
                                                    <option>LKR90000</option>
                                                    <option>LKR100000</option>
                                                </select>
                                            </div>
                                            <button type="submit" class="btn btn-default btn-sm pull-right">Filter</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Filter by Location -->
                            <div class="accordion-group">
                                <div class="accordion-heading togglize"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseNine">District <i class="fa fa-angle-down"></i> </a> </div>
                                <div id="collapseNine" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <ul class="filter-options-list list-group">
                                            <li class="list-group-item"><span class="badge">4</span><a href="#">New York</a></li>
                                            <li class="list-group-item"><span class="badge">23</span><a href="#">Queensland</a></li>
                                            <li class="list-group-item"><span class="badge">41</span><a href="#">California</a></li>
                                            <li class="list-group-item"><span class="badge">6</span><a href="#">South Wales</a></li>
                                            <li class="list-group-item"><span class="badge">54</span><a href="#">Tasmania</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Filter by Color -->
                            <div class="accordion-group">
                                <div class="accordion-heading togglize"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#" href="#collapseTen">City/Town <i class="fa fa-angle-down"></i> </a> </div>
                                <div id="collapseTen" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <ul class="filter-options-list list-group color-options">
                                            <li class="list-group-item"><span class="badge car-color-white"></span><a href="#">White</a></li>
                                            <li class="list-group-item"><span class="badge car-color-black"></span><a href="#">Black</a></li>
                                            <li class="list-group-item"><span class="badge car-color-red"></span><a href="#">Red</a></li>
                                            <li class="list-group-item"><span class="badge car-color-yellow"></span><a href="#">Yellow</a></li>
                                            <li class="list-group-item"><span class="badge car-color-brown"></span><a href="#">Brown</a></li>
                                            <li class="list-group-item"><span class="badge car-color-grey"></span><a href="#">Grey</a></li>
                                            <li class="list-group-item"><span class="badge car-color-silver"></span><a href="#">Silver</a></li>
                                            <li class="list-group-item"><span class="badge car-color-gold"></span><a href="#">Gold</a></li>
                                            <li class="list-group-item"><span class="badge car-color-blue"></span><a href="#">Blue</a></li>
                                            <li class="list-group-item"><span class="badge car-color-green"></span><a href="#">Green</a></li>
                                            <li class="list-group-item"><span class="badge car-color-orange"></span><a href="#">Orange</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Toggle -->
                        <a href="#" class="btn-default btn-sm btn"><i class="fa fa-refresh"></i> Reset search</a>
                        <a href="#" class="btn-primary btn-sm btn"><i class="fa fa-folder-o"></i> Save search</a>
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
        $.ajax({
            url: '/ampliar/services/load_ad_list.jsp?'

        }).done(function (data) {
            $('#results-holder').html(data);
        });
    }


    window.addEventListener("load", function () {
        loadAdList();
    });


</script>



<%@include file='layout/footer.jsp'%>