<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="per" uri="/includes/tld/permissions.tld"%>

<script>
dmflas
$(function() 
		{

	 $(".backup_profilepicture").on("error", function(){
         $(this).attr('src', '<s:url value='/includes/css/images/newmenu/defaultChannelimage.jpg'/>');
     });
	
	// $('[data-toggle=tooltip]').tooltip({ trigger: "hover" });
	 $('[data-toogle=tooltip]').tooltip({ 
	 trigger: "hover" ,
	 placement:'top',
     html: true,
     container: 'body'
     });
		});
		
$('#menu li').on('click', function(){
		
	alert();
		var tthis = $(this); 
	    $('#menu li').each(function(){
	    	$(this).removeClass('active');
	    });
	   
	    tthis.addClass('active');
	});
		
/* $('#menu li a').on('click', function(){
	
    $('li a.current').removeClass('selectedmenu');
    $(this).addClass('selectedmenu');
}); */
</script>

    <div class="page-sidebar " id="subMenu">
    <div class="page-sidebar-wrapper scrollbar-dynamic" id="menu">
      <ul class="sidebar-submenu  scrollbar-dynamic">
        <li> <a href="javascript:void(0);">  <span class="title">
        
         <s:if test="#request.type == 'ADMIN'">
        <span><img src="<s:property value="#request.twtAcc.profilePicUrl" />"  " class="backup_profilepicture"  height="24px" width="24px"/></span><span class="text-center m-l-10" ><s:property value="#request.twtAcc.twtUsrName" /></span>
		</s:if>
        <s:else>
        	<span><img src="<s:property value="#request.twtAcc.profileImageUrl" />" class="backup_profilepicture" height="24px" width="24px"/></span><span class="text-center m-l-10"><s:property value="#request.twtAcc.screenName" /></span>
						
         </s:else> 
         </span> <span class="selected"></span> <span class="arrow  open "></span> </a> 
         
         <ul class="sub-menu sidebar-submenu-ul">
  		     
  		     <s:iterator id="twtFeedAccts" value="#request.twtAccts" status="twtAcct">
						<li>
							<s:if test="#request.twtAcc.twitterId==socialId">
								<a href="<s:url value="/analytics/homeTwitter"/>?twitterId=<s:property value="socialId" />&type=ADMIN" title="<s:property value="screenName" />" ><img src="<s:property value="pic" />"  class="backup_profilepicture" height="24px" width="24px"/><span style="vertical-align:top;padding-left:5px;margin-top:3px; display:inline-block;"><s:property value="screenName" /></span></a>
							</s:if>
							<s:else>
								<a href="<s:url value="/analytics/homeTwitter"/>?twitterId=<s:property value="socialId" />&type=ADMIN" title="<s:property value="screenName" />"><img src="<s:property value="pic" />"   class="backup_profilepicture" height="24px" width="24px"/><span style="vertical-align:top;padding-left:5px;margin-top:3px; display:inline-block;"><s:property value="screenName" /></span></a>
							</s:else>	
						</li>
							
					</s:iterator>
					
					<s:iterator id="twtFeedAccts" value="#request.compAccts" status="twtAcct">
						<li <s:if test="#twtAcct.last"> style="border-bottom:none !important;"</s:if>>
							<s:if test="#request.compAccts.twitterId==twitterId">
							<a href="<s:url value="/analytics/homeTwitter"/>?twitterId=<s:property value="twitterId" />&type=COMP" title="<s:property value="screenName" />"><img src="<s:property value="profileImageUrl" />"   class="backup_profilepicture" height="24px" width="24px"/><span style="vertical-align:top;padding-left:5px;margin-top:3px; display:inline-block;"><s:property value="screenName" /></span></a>
							</s:if>
							<s:else>
								<a href="<s:url value="/analytics/homeTwitter"/>?twitterId=<s:property value="twitterId" />&type=COMP" title="<s:property value="screenName" />"><img src="<s:property value="profileImageUrl" />"  class="backup_profilepicture"   height="24px" width="24px"/><span style="vertical-align:top;padding-left:5px;margin-top:3px; display:inline-block;"><s:property value="screenName" /></span></a>
							</s:else>
							</li>
					</s:iterator>
  		     
  		     
  		  
		
            </ul>
		 </li>
      
       
        <li  class="active"  > <a href="javascript:void(0);"  data-toogle='tooltip' title="Discover your top fans and analyse the growth of your follower base."  onclick="acctStats('<s:property value="#request.twtAcc.twitterId" />')"> <span id ="accountStatsmenu" class="title"><s:text name="analytics.tab.accountStats" /></span><span class="selected"></span> </a>
           
        </li>             
        <li > <a href="javascript:void(0);" data-toogle='tooltip' title="Measure the performance of the content posted on your Twitter page." onclick="twtStats('<s:property value="#request.twtAcc.twitterId" />')" ><span id ="tweetStatsmenu" class="title"><s:text name="analytics.tab.tweetStats" /></span>  </a>
           
        </li>
         <li > <a href="javascript:void(0);" data-toogle='tooltip' title="Measure the reach of individual posts made by the admin." onclick="twtAnalytcs('<s:property value="#request.twtAcc.twitterId" />')"> <span id ="tweetAnalyticmenu" class="title"><s:text name="analytics.tab.tweetAnalytic" /></span> </a>
            
        </li>
         <li > <a href="javascript:void(0);" data-toogle='tooltip' title="Benchmark the performance of your profile against your competitors." onclick="compare('<s:property value="#request.twtAcc.twitterId" />')">  <span id ="comparemenu" class="title"><s:text name="analytics.tab.compare" /></span>  </a>
           
        </li>
        </ul>
     
      </div>
      <div class="clearfix"></div>
      <!-- END SIDEBAR MENU -->
    </div>
