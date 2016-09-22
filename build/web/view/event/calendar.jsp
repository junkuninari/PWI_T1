<%@page import="br.ufms.model.User"%>

<%
    User user = new User();

    user = (User) session.getAttribute("user");

%>

<div class="events">
    <div class="ca-header">
        <h3 class="center color19">September 2016</h3>
    </div>
    <div class="weekday-content">
        <div class="weekday"><h6 class="center-block"><strong>SUN</strong></h6></div>
        <div class="weekday"><h6 class="center-block"><strong>MON</strong></h6></div>
        <div class="weekday"><h6 class="center-block"><strong>TUE</strong></h6></div>
        <div class="weekday"><h6 class="center-block"><strong>WED</strong></h6></div>
        <div class="weekday"><h6 class="center-block"><strong>THU</strong></h6></div>
        <div class="weekday"><h6 class="center-block"><strong>FRI</strong></h6></div>
        <div class="weekday"><h6 class="center-block"><strong>SAT</strong></h6></div>
    </div>
    <div class="day-content">
        <div class="day"><h6 class="center-block"><strong></strong></h6></div>
        <div class="day"><h6 class="center-block"><strong></strong></h6></div>
        <div class="day"><h6 class="center-block"><strong></strong></h6></div>
        <div class="day"><h6 class="center-block"><strong></strong></h6></div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>01</strong></h5>
                    <%request.setAttribute("day", "01");%>    
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=01&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>02</strong></h5>                        
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=02&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>03</strong></h5>  
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=03&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>    
    <div class="day-content">                 
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>04</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=04&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>            
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>05</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=05&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>            
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>06</strong></h5>  
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=06&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>            
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>07</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=07&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>                     
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>08</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=08&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>                     
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>09</strong></h5>  
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=09&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>                     
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>10</strong></h5> 
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=10&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>                     
    </div>    
    <div class="day-content">   
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>11</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=11&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>12</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=12&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>13</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=13&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>14</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=14&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>15</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=15&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>16</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=16&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>17</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=17&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>    
    <div class="day-content">    
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>18</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=18&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>19</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=19&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>20</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=20&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>21</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=21&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>22</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=22&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>23</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=23&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>24</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=24&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>    
    <div class="day-content">    
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>25</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=25&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>26</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=26&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>27</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=27&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>28</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=28&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>29</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=29&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day ani-dd">
            <ul>
                <li>
                    <h5 class="center"><strong>30</strong></h5>   
                    <ul class="drop-menu menu-2">
                        <li><a href="EventController?action=search&day=30&id_user=<%= user.getId()%>">VIEW</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="day"><h6 class="center-block"><strong></strong></h6></div>
    </div>
</div>
