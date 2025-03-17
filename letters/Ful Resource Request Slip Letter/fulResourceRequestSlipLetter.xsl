<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:include href="header.xsl" />
<xsl:include href="senderReceiver.xsl" />
<xsl:include href="mailReason.xsl" />
<xsl:include href="footer.xsl" />
<xsl:include href="style.xsl" />
<xsl:include href="recordTitle.xsl" />
<xsl:template match="/">
	<html>
		<head>

		<xsl:call-template name="generalStyle" />

		</head>

			<body>
<tr>
<td><b>@@request_type@@: </b><xsl:value-of select="notification_data/request_type"/></td>
						</tr>
						
 <tr><td><div align="left" style="font-size:25px; font-family:ariel; font-style:bold;">

<xsl:choose>
              	<!--xsl:when test="contains(notification_data/destination, 'Remote Delivery (ILL)')">Remote Delivery (ILL)<br />
                 </xsl:when-->
<xsl:when test="contains(notification_data/request_type, 'Ship digitally')"><br></br>
    <strong>Created Date: </strong><xsl:value-of select="notification_data/request/create_date"/><br></br>
<h3>Scan in house and upload to Alma</h3>
        <tr>
         <td><strong>Copyright Statement:</strong> This material may be protected by copyright law (Title 17 U.S. Code)</td>
         </tr>

<p></p>
 Request ID and File Name: <img src="cid:resource_sharing_request_id.png" />
<p></p>


<p> Portion requested: <xsl:value-of select="notification_data/request/note"/></p>
         <p></p>
	<div align="left" style="font-size:14px;"> 

           <tr>
                 <td><xsl:call-template name="recordTitle" /> </td>
           </tr>

            <xsl:if test="notification_data/phys_item_display/edition != ''">
                <tr>
                  <td>@@edition@@: <xsl:value-of select="notification_data/phys_item_display/edition"/></td>
                  </tr>
            </xsl:if>

             <tr>
               <td><h4><b>@@item_barcode@@: </b><xsl:value-of select="notification_data/phys_item_display/optional_barcodes/string"/></h4></td>
              </tr>
         
            <tr>
              <td><h3><b>Ex ID: </b><xsl:value-of select="notification_data/group_qualifier"/></h3></td>
            </tr>
             <tr>
             <td><h4><b>@@location@@: </b><xsl:value-of select="notification_data/phys_item_display/location_name"/></h4></td></tr>

             <xsl:if test="notification_data/phys_item_display/call_number != ''">
                 <tr><td><h4><b>@@call_number@@: </b><xsl:value-of select="notification_data/phys_item_display/call_number"/></h4></td></tr>
            </xsl:if>

              <xsl:if  test="notification_data/phys_item_display/shelving_location/string" >
                  <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                    <tr>
                       <td><b>@@shelving_location_for_item@@: </b>
                           <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                             <xsl:value-of select="."/>&#160;</xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
              <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                   <tr>
                       <td><b>@@shelving_locations_for_holding@@: </b>
                          <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/> &#160;
                          </xsl:for-each>
                          </td>
                          </tr>
                     </xsl:if>
                 <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                     <tr>
                          <td><b>@@shelving_locations_for_holding@@: </b>
                           <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                             <xsl:value-of select="."/>  &#160;
                             </xsl:for-each>
                      </td>
                      </tr>
                </xsl:if>
      </xsl:if>
                                          <xsl:if  test="notification_data/phys_item_display/display_alt_call_numbers/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>

                               </div>
    </xsl:when>
 <xsl:when test="contains(notification_data/request_type, 'Selector Review')">Workorder Selector Review
<h3>Use Scan in and route to Selector or Mem Circ desk</h3><br />
 <xsl:value-of select="notification_data/request/note"/><br />
<p></p>
	<div align="left" style="font-size:14px;"> 
                                         			
                                        
                                         						<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                         						<tr>
                                         							<td><b>@@note_item_specified_request@@.</b></td>
                                         						</tr>
                                         						</xsl:if>
                                         						<xsl:if  test="notification_data/request/manual_description != ''" >
                                         						<tr>
                                         							<td><b>@@please_note@@: </b>@@manual_description_note@@ - <xsl:value-of select="notification_data/request/manual_description"/></td>
                                         						</tr>
                                                                 </xsl:if>


                                         					 <xsl:if  test="notification_data/external_id != ''" >
                                         							<tr>
                                         								<td><b>@@external_id@@: </b><xsl:value-of select="notification_data/external_id"/></td>
                                         							</tr>
                                         						</xsl:if>

                                         						  <xsl:if test="notification_data/incoming_request/note != ''">
                                         	   <tr>
                                              <td><b>@@system_notes@@:</b><xsl:value-of select="notification_data/incoming_request/note"/></td>
                                         	   </tr>
                                         	</xsl:if>
                                          <tr>
                                            <td><xsl:call-template name="recordTitle" />
                                            </td>
                                          </tr>

                                            <xsl:if test="notification_data/phys_item_display/edition != ''">
                                              <tr>
                                              <td>@@edition@@: <xsl:value-of select="notification_data/phys_item_display/edition"/></td>
                                              </tr>
                                            </xsl:if>


                                              <tr>
                                              <td><h4><b>@@item_barcode@@: </b><xsl:value-of select="notification_data/phys_item_display/optional_barcodes/string"/></h4></td>
                                              </tr>

                                          <tr>
                                            <td><h4><b>@@location@@: </b><xsl:value-of select="notification_data/phys_item_display/location_name"/></h4></td></tr>

                                            <xsl:if test="notification_data/phys_item_display/call_number != ''">
                                            <tr><td><h4><b>@@call_number@@: </b><xsl:value-of select="notification_data/phys_item_display/call_number"/></h4></td></tr>
                                            </xsl:if>

                                          <xsl:if  test="notification_data/phys_item_display/shelving_location/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@shelving_location_for_item@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>
                                          <xsl:if  test="notification_data/phys_item_display/display_alt_call_numbers/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>

                                          <b></b>

                                         					
                                         			</div>

                                         	<!-- Add Resource Sharing Library if not designated as Resource Sharing -->
                                         				
                                         				<div>
                                         <br></br>



                                         					<p align="left" style="font-size:20px; font-family:oshkosh;bottom:0"><b>
                                         							<xsl:call-template name="reverse">
                                         								<xsl:with-param name="input" select="notification_data/phys_item_display/owning_library_name"/>
                                         							</xsl:call-template>
                                         						</b></p>
                                         					<p style="font-size:14px; font-family:oshkosh;bottom:0" align="left">: si yrarbiL gninwO</p>
                                                                                 <p style="font-size:18px; font-family:oshkosh;bottom:0" align="left">pordkoob ro ksed yrarbil nruteR nepO na ot nruteR</p></div>

</xsl:when>

<xsl:when test="starts-with(notification_data/destination, 'CTS Catalog Maintenance and Editing')">
 <h3>Memorial Library - CTS Workorder</h3>
 <xsl:value-of select="notification_data/request/note"/><br />
<p></p>
	<div align="left" style="font-size:14px;"> 
                                         			
                                        
                                         						<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                         						<tr>
                                         							<td><b>@@note_item_specified_request@@.</b></td>
                                         						</tr>
                                         						</xsl:if>
                                         						<xsl:if  test="notification_data/request/manual_description != ''" >
                                         						<tr>
                                         							<td><b>@@please_note@@: </b>@@manual_description_note@@ - <xsl:value-of select="notification_data/request/manual_description"/></td>
                                         						</tr>
                                                                 </xsl:if>


                                         					 <xsl:if  test="notification_data/external_id != ''" >
                                         							<tr>
                                         								<td><b>@@external_id@@: </b><xsl:value-of select="notification_data/external_id"/></td>
                                         							</tr>
                                         						</xsl:if>

                                         						  <xsl:if test="notification_data/incoming_request/note != ''">
                                         	   <tr>
                                              <td><b>@@system_notes@@:</b><xsl:value-of select="notification_data/incoming_request/note"/></td>
                                         	   </tr>
                                         	</xsl:if>
                                          <tr>
                                            <td><xsl:call-template name="recordTitle" />
                                            </td>
                                          </tr>

                                            <xsl:if test="notification_data/phys_item_display/edition != ''">
                                              <tr>
                                              <td>@@edition@@: <xsl:value-of select="notification_data/phys_item_display/edition"/></td>
                                              </tr>
                                            </xsl:if>


                                              <tr>
                                              <td><h4><b>@@item_barcode@@: </b><xsl:value-of select="notification_data/phys_item_display/optional_barcodes/string"/></h4></td>
                                              </tr>

                                          <tr>
                                            <td><h4><b>@@location@@: </b><xsl:value-of select="notification_data/phys_item_display/location_name"/></h4></td></tr>

                                            <xsl:if test="notification_data/phys_item_display/call_number != ''">
                                            <tr><td><h4><b>@@call_number@@: </b><xsl:value-of select="notification_data/phys_item_display/call_number"/></h4></td></tr>
                                            </xsl:if>

                                          <xsl:if  test="notification_data/phys_item_display/shelving_location/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@shelving_location_for_item@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>
                                          <xsl:if  test="notification_data/phys_item_display/display_alt_call_numbers/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>

                                          <b></b>

                                         					
                                         			</div>

                                         	<!-- Add Resource Sharing Library if not designated as Resource Sharing -->
                                         				<br />
                                         				<br />
                                         				<div>
                                         <br></br>



                                         					<p align="left" style="font-size:20px; font-family:oshkosh;bottom:0"><b>
                                         							<xsl:call-template name="reverse">
                                         								<xsl:with-param name="input" select="notification_data/phys_item_display/owning_library_name"/>
                                         							</xsl:call-template>
                                         						</b></p>
                                         					<p style="font-size:14px; font-family:oshkosh;bottom:0" align="left">: si yrarbiL gninwO</p>
                                                                                 <p style="font-size:18px; font-family:oshkosh;bottom:0" align="left">pordkoob ro ksed yrarbil nruteR nepO na ot nruteR</p></div>

 </xsl:when>

<xsl:when test="contains(notification_data/request/note, 'REMOTE DELIVERY REQUESTED')">Remote Delivery (ILL)				
 <h4>Library Staff use Scan in and send to ILL via Redbox</h4><p></p>

                  <div align="right">
                  <b><xsl:value-of select="notification_data/user_for_printing/name"/></b><p></p>
                        <xsl:value-of select="notification_data/request/note"/><p></p>
<xsl:value-of select="notification_data/user_for_printing/email"/><p></p>
</div>

<div align="left" style="font-size:14px; font-family:ariel;">
<p>See https://account.library.wisc.edu/ for due date</p>

<p>Use the enclosed pre-paid US Postal Service (USPS) mailer to return to:</p>x

Remote Delivery/ILL <br />
Memorial Library <br />
728 State St. Room B106B <br />
Madison, WI 53706<br />

<p>Or drop off the item at a campus library - see https://go.wisc.edu/OpenReturn for locations</p>
</div>   

<p></p>
<p></p>
	<div align="left" style="font-size:14px;"> 
                                         			
                                        
                                         					

                                         						  <xsl:if test="notification_data/incoming_request/note != ''">
                                         	   <tr>
                                              <td><b>@@system_notes@@:</b><xsl:value-of select="notification_data/incoming_request/note"/></td>
                                         	   </tr>
                                         	</xsl:if>
                                          <tr>
                                            <td><xsl:call-template name="recordTitle" />
                                            </td>
                                          </tr>

                                            <xsl:if test="notification_data/phys_item_display/edition != ''">
                                              <tr>
                                              <td>@@edition@@: <xsl:value-of select="notification_data/phys_item_display/edition"/></td>
                                              </tr>
                                            </xsl:if>


                                              <tr>
                                              <td><h4><b>@@item_barcode@@: </b><xsl:value-of select="notification_data/phys_item_display/optional_barcodes/string"/></h4></td>
                                              </tr>

                                          <tr>
                                            <td><h4><b>@@location@@: </b><xsl:value-of select="notification_data/phys_item_display/location_name"/></h4></td></tr>

                                            <xsl:if test="notification_data/phys_item_display/call_number != ''">
                                            <tr><td><h4><b>@@call_number@@: </b><xsl:value-of select="notification_data/phys_item_display/call_number"/></h4></td></tr>
                                            </xsl:if>

                                          <xsl:if  test="notification_data/phys_item_display/shelving_location/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@shelving_location_for_item@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>
                                          <xsl:if  test="notification_data/phys_item_display/display_alt_call_numbers/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>

                                          <b></b>

                                         					
                                         			</div>

                                         	<!-- Add Resource Sharing Library if not designated as Resource Sharing -->
                                         				
                                         				<div>
                                         <br></br>



                                         					<p align="left" style="font-size:20px; font-family:oshkosh;bottom:0"><b>
                                         							<xsl:call-template name="reverse">
                                         								<xsl:with-param name="input" select="notification_data/phys_item_display/owning_library_name"/>
                                         							</xsl:call-template>
                                         						</b></p>
                                         					<p style="font-size:14px; font-family:oshkosh;bottom:0" align="left">: si yrarbiL gninwO</p>
                                                                                 <p style="font-size:18px; font-family:oshkosh;bottom:0" align="left">pordkoob ro ksed yrarbil nruteR nepO na ot nruteR</p></div>
 	
</xsl:when>

  <xsl:when test="contains(notification_data/destination, 'ILL Library')">ILL Department<br />
 <h4>Library Staff use Scan in and route to ILL</h4><p></p>
 <xsl:value-of select="notification_data/request/note"/><br />
<p></p>
<p></p>
	<div align="left" style="font-size:14px;"> 
                                         			
                                        
                                         						<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                         						<tr>
                                         							<td><b>@@note_item_specified_request@@.</b></td>
                                         						</tr>
                                         						</xsl:if>
                                         						<xsl:if  test="notification_data/request/manual_description != ''" >
                                         						<tr>
                                         							<td><b>@@please_note@@: </b>@@manual_description_note@@ - <xsl:value-of select="notification_data/request/manual_description"/></td>
                                         						</tr>
                                                                 </xsl:if>


                                         					 <xsl:if  test="notification_data/external_id != ''" >
                                         							<tr>
                                         								<td><b>@@external_id@@: </b><xsl:value-of select="notification_data/external_id"/></td>
                                         							</tr>
                                         						</xsl:if>

                                         						  <xsl:if test="notification_data/incoming_request/note != ''">
                                         	   <tr>
                                              <td><b>@@system_notes@@:</b><xsl:value-of select="notification_data/incoming_request/note"/></td>
                                         	   </tr>
                                         	</xsl:if>
                                          <tr>
                                            <td><xsl:call-template name="recordTitle" />
                                            </td>
                                          </tr>

                                            <xsl:if test="notification_data/phys_item_display/edition != ''">
                                              <tr>
                                              <td>@@edition@@: <xsl:value-of select="notification_data/phys_item_display/edition"/></td>
                                              </tr>
                                            </xsl:if>


                                              <tr>
                                              <td><h4><b>@@item_barcode@@: </b><xsl:value-of select="notification_data/phys_item_display/optional_barcodes/string"/></h4></td>
                                              </tr>

                                          <tr>
                                            <td><h4><b>@@location@@: </b><xsl:value-of select="notification_data/phys_item_display/location_name"/></h4></td></tr>

                                            <xsl:if test="notification_data/phys_item_display/call_number != ''">
                                            <tr><td><h4><b>@@call_number@@: </b><xsl:value-of select="notification_data/phys_item_display/call_number"/></h4></td></tr>
                                            </xsl:if>

                                          <xsl:if  test="notification_data/phys_item_display/shelving_location/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@shelving_location_for_item@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>
                                          <xsl:if  test="notification_data/phys_item_display/display_alt_call_numbers/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>

                                          <b></b>

                                         					
                                         			</div>

                                         	<!-- Add Resource Sharing Library if not designated as Resource Sharing -->
                                         				<br />
                                         				<br />
                                         				<div>
                                         <br></br>



                                         					<p align="left" style="font-size:20px; font-family:oshkosh;bottom:0"><b>
                                         							<xsl:call-template name="reverse">
                                         								<xsl:with-param name="input" select="notification_data/phys_item_display/owning_library_name"/>
                                         							</xsl:call-template>
                                         						</b></p>
                                         					<p style="font-size:14px; font-family:oshkosh;bottom:0" align="left">: si yrarbiL gninwO</p>
                                                                                 <p style="font-size:18px; font-family:oshkosh;bottom:0" align="left">pordkoob ro ksed yrarbil nruteR nepO na ot nruteR</p></div>

  </xsl:when>

 <xsl:when test="contains(notification_data/request_type, 'Ship physically')">
				            <xsl:value-of select="notification_data/destination"/>
         <h4><tr><td><div align="left"><b>Red Box Resource Sharing: Library Staff use Ship Item to Process</b></div></td>
                                </tr><br /></h4>
                             <h3><div align="right"><b>
							<xsl:value-of select="notification_data/user_for_printing/name"/></b></div>
                             <br /></h3>
 <xsl:value-of select="notification_data/request/note"/><br />
    					
                                                 <p></p>
                                                 <p align="right" style="font-size:14px;">UW-Madison Libraries participate in Open Return</p>
                                                <p align="right" style="font-size:14px;">For more information see - https://go.wisc.edu/OpenReturn</p>
                               
<div align="left" style="font-size:14px;">                                 
                                			
                                						<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                						<tr>
                                							<td><b>@@note_item_specified_request@@.</b></td>
                                						</tr>
                                						</xsl:if>
                                						<xsl:if  test="notification_data/request/manual_description != ''" >
                                						<tr>
                                							<td><b>@@please_note@@: </b>@@manual_description_note@@ - <xsl:value-of select="notification_data/request/manual_description"/></td>
                                						</tr>
                                                        </xsl:if>


                                					 <xsl:if  test="notification_data/external_id != ''" >
                                							<tr>
                                								<td><b>@@external_id@@: </b><xsl:value-of select="notification_data/external_id"/></td>
                                							</tr>
                                						</xsl:if>

                                						  <xsl:if test="notification_data/incoming_request/note != ''">
                                	   <tr>
                                     <td><b>@@system_notes@@:</b><xsl:value-of select="notification_data/incoming_request/note"/></td>
                                	   </tr>
                                	</xsl:if>


                                						<tr>
                                							<td><xsl:call-template name="recordTitle" />
                                							</td>
                                						</tr>

                                							<xsl:if test="notification_data/phys_item_display/edition != ''">
                                								<tr>
                                								<td>@@edition@@: <xsl:value-of select="notification_data/phys_item_display/edition"/></td>
                                								</tr>
                                							</xsl:if>


                                								<tr>
                                								<td><b>@@item_barcode@@: </b><xsl:value-of select="notification_data/phys_item_display/optional_barcodes/string"/></td>
                                								</tr>

                                						<tr>
                                							<td><b>@@location@@: </b><xsl:value-of select="notification_data/phys_item_display/location_name"/></td></tr>

                                							<xsl:if test="notification_data/phys_item_display/call_number != ''">
                                							<tr><td><h4><b>@@call_number@@: </b><xsl:value-of select="notification_data/phys_item_display/call_number"/></h4></td></tr>
                                							</xsl:if>

                                						<xsl:if  test="notification_data/phys_item_display/shelving_location/string" >
                                							<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                							<tr>
                                								<td><b>@@shelving_location_for_item@@: </b>
                                								 <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                									<xsl:value-of select="."/>
                                								 &#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                							<xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                							<tr>
                                								<td><b>@@shelving_locations_for_holding@@: </b>
                                								<xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                									<xsl:value-of select="."/>
                                								&#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                							<xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                							<tr>
                                								<td><b>@@shelving_locations_for_holding@@: </b>
                                								<xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                									<xsl:value-of select="."/>
                                								&#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                						</xsl:if>
                                						<xsl:if  test="notification_data/phys_item_display/display_alt_call_numbers/string" >
                                							<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                							<tr>
                                								<td><b>@@alt_call_number@@: </b>
                                								 <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                									<xsl:value-of select="."/>
                                								 &#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                							<xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                							<tr>
                                								<td><b>@@alt_call_number@@: </b>
                                								<xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                									<xsl:value-of select="."/>
                                								&#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                							<xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                							<tr>
                                								<td><b>@@alt_call_number@@: </b>
                                								<xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                									<xsl:value-of select="."/>
                                								&#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                						</xsl:if>

                                					
</div>
                                			

                                	<!-- Add Resource Sharing Library if not designated as Resource Sharing -->
                                				
                                				<div>
                                <br></br>



                                					<p align="left" style="font-size:20px; font-family:oshkosh;bottom:0"><b>
                                							<xsl:call-template name="reverse">
                                								<xsl:with-param name="input" select="notification_data/phys_item_display/owning_library_name"/>
                                							</xsl:call-template>
                                						</b></p>
                                					<p style="font-size:14px; font-family:oshkosh;bottom:0" align="left">: si yrarbiL gninwO</p>
                                                                        <p style="font-size:18px; font-family:oshkosh;bottom:0" align="left">pordkoob ro ksed yrarbil nruteR nepO na ot nruteR</p></div>

			</xsl:when>

<xsl:when test="contains(notification_data/request_type, 'Patron digitization request')">
<h3>Scan in house and upload to Alma</h3>
        <tr>
         <td><strong>Copyright Statement:</strong> This material may be protected by copyright law (Title 17 U.S. Code)</td>
         </tr>
        <p></p>
        Request ID: <xsl:value-of select="notification_data/resource_sharing_request_id"/>
<p></p>
File Name: <img src="cid:resource_sharing_request_id.png" />
<p></p>
<xsl:if  test="notification_data/external_id != ''" >
                       	<tr><td><b>Ex ID : </b><xsl:value-of select="notification_data/external_id"/></td></tr></xsl:if>
<p></p>
Scannx Ex ID :<div style='font-size:35px;font-family:"3 of 9 Barcode"'>*<xsl:value-of select="notification_data/request_id"/>*</div>
<p></p>
<p> Portion requested: <xsl:value-of select="notification_data/request/note"/></p>
         <p></p>
	<div align="left" style="font-size:14px;"> 

                                          <tr>
                                            <td><xsl:call-template name="recordTitle" />
                                            </td>
                                          </tr>

                                            <xsl:if test="notification_data/phys_item_display/edition != ''">
                                              <tr>
                                              <td>@@edition@@: <xsl:value-of select="notification_data/phys_item_display/edition"/></td>
                                              </tr>
                                            </xsl:if>


                                              <tr>
                                              <td><h4><b>@@item_barcode@@: </b><xsl:value-of select="notification_data/phys_item_display/optional_barcodes/string"/></h4></td>
                                              </tr>

                                          <tr>
                                            <td><h4><b>@@location@@: </b><xsl:value-of select="notification_data/phys_item_display/location_name"/></h4></td></tr>

                                            <xsl:if test="notification_data/phys_item_display/call_number != ''">
                                            <tr><td><h4><b>@@call_number@@: </b><xsl:value-of select="notification_data/phys_item_display/call_number"/></h4></td></tr>
                                            </xsl:if>

                                          <xsl:if  test="notification_data/phys_item_display/shelving_location/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@shelving_location_for_item@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>
                                          <xsl:if  test="notification_data/phys_item_display/display_alt_call_numbers/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>

                               </div>
       		

                                         	
</xsl:when>



                                         	

    <xsl:when test="contains(notification_data/request_type, 'Move temporary')">Move Request<br />
         <xsl:value-of select="notification_data/destination"/>
 <xsl:value-of select="notification_data/request/note"/><br />
                                         <h3>Library Staff use Scan in to Process</h3><br />
<p></p>
<p></p>
	<div align="left" style="font-size:14px;"> 
                                         			
                                        
                                         						<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                         						<tr>
                                         							<td><b>@@note_item_specified_request@@.</b></td>
                                         						</tr>
                                         						</xsl:if>
                                         						<xsl:if  test="notification_data/request/manual_description != ''" >
                                         						<tr>
                                         							<td><b>@@please_note@@: </b>@@manual_description_note@@ - <xsl:value-of select="notification_data/request/manual_description"/></td>
                                         						</tr>
                                                                 </xsl:if>


                                         					 <xsl:if  test="notification_data/external_id != ''" >
                                         							<tr>
                                         								<td><b>@@external_id@@: </b><xsl:value-of select="notification_data/external_id"/></td>
                                         							</tr>
                                         						</xsl:if>

                                         						  <xsl:if test="notification_data/incoming_request/note != ''">
                                         	   <tr>
                                              <td><b>@@system_notes@@:</b><xsl:value-of select="notification_data/incoming_request/note"/></td>
                                         	   </tr>
                                         	</xsl:if>
                                          <tr>
                                            <td><xsl:call-template name="recordTitle" />
                                            </td>
                                          </tr>

                                            <xsl:if test="notification_data/phys_item_display/edition != ''">
                                              <tr>
                                              <td>@@edition@@: <xsl:value-of select="notification_data/phys_item_display/edition"/></td>
                                              </tr>
                                            </xsl:if>


                                              <tr>
                                              <td><h4><b>@@item_barcode@@: </b><xsl:value-of select="notification_data/phys_item_display/optional_barcodes/string"/></h4></td>
                                              </tr>

                                          <tr>
                                            <td><h4><b>@@location@@: </b><xsl:value-of select="notification_data/phys_item_display/location_name"/></h4></td></tr>

                                            <xsl:if test="notification_data/phys_item_display/call_number != ''">
                                            <tr><td><h4><b>@@call_number@@: </b><xsl:value-of select="notification_data/phys_item_display/call_number"/></h4></td></tr>
                                            </xsl:if>

                                          <xsl:if  test="notification_data/phys_item_display/shelving_location/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@shelving_location_for_item@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@shelving_locations_for_holding@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>
                                          <xsl:if  test="notification_data/phys_item_display/display_alt_call_numbers/string" >
                                            <xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                               <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                               &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                            <xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                            <tr>
                                              <td><b>@@alt_call_number@@: </b>
                                              <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                                <xsl:value-of select="."/>
                                              &#160;
                                               </xsl:for-each>
                                              </td>
                                            </tr>
                                            </xsl:if>
                                          </xsl:if>

                                          <b></b>

                                         					
                                         			</div>

                                         	<!-- Add Resource Sharing Library if not designated as Resource Sharing -->
                                         				
                                         				<div>
                                         <br></br>



                                         					<p align="left" style="font-size:20px; font-family:oshkosh;bottom:0"><b>
                                         							<xsl:call-template name="reverse">
                                         								<xsl:with-param name="input" select="notification_data/phys_item_display/owning_library_name"/>
                                         							</xsl:call-template>
                                         						</b></p>
                                         					<p style="font-size:14px; font-family:oshkosh;bottom:0" align="left">: si yrarbiL gninwO</p>
                                                                                 <p style="font-size:18px; font-family:oshkosh;bottom:0" align="left">pordkoob ro ksed yrarbil nruteR nepO na ot nruteR</p></div>

</xsl:when>



   <xsl:otherwise>
				            <xsl:value-of select="notification_data/destination"/>
         <h4><tr><td><div align="left"><b>Local Hold: Library Staff use Scan in to Process</b></div></td>
                                </tr><br /></h4>
                             <h3><div align="right"><b>
							<xsl:value-of select="notification_data/user_for_printing/name"/></b></div>
                             <br /></h3>
 <xsl:value-of select="notification_data/request/note"/><br />
    					
                                                 <p></p>
                                                 <p align="right" style="font-size:14px;">UW-Madison Libraries participate in Open Return</p>
                                                <p align="right" style="font-size:14px;">For more information see - https://go.wisc.edu/OpenReturn</p>
                               
<div align="left" style="font-size:14px;">                                 
                                			
                                						<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                						<tr>
                                							<td><b>@@note_item_specified_request@@.</b></td>
                                						</tr>
                                						</xsl:if>
                                						<xsl:if  test="notification_data/request/manual_description != ''" >
                                						<tr>
                                							<td><b>@@please_note@@: </b>@@manual_description_note@@ - <xsl:value-of select="notification_data/request/manual_description"/></td>
                                						</tr>
                                                        </xsl:if>


                                					 <xsl:if  test="notification_data/external_id != ''" >
                                							<tr>
                                								<td><b>@@external_id@@: </b><xsl:value-of select="notification_data/external_id"/></td>
                                							</tr>
                                						</xsl:if>

                                						  <xsl:if test="notification_data/incoming_request/note != ''">
                                	   <tr>
                                     <td><b>@@system_notes@@:</b><xsl:value-of select="notification_data/incoming_request/note"/></td>
                                	   </tr>
                                	</xsl:if>


                                						<tr>
                                							<td><xsl:call-template name="recordTitle" />
                                							</td>
                                						</tr>

                                							<xsl:if test="notification_data/phys_item_display/edition != ''">
                                								<tr>
                                								<td>@@edition@@: <xsl:value-of select="notification_data/phys_item_display/edition"/></td>
                                								</tr>
                                							</xsl:if>


                                								<tr>
                                								<td><b>@@item_barcode@@: </b><xsl:value-of select="notification_data/phys_item_display/optional_barcodes/string"/></td>
                                								</tr>

                                						<tr>
                                							<td><b>@@location@@: </b><xsl:value-of select="notification_data/phys_item_display/location_name"/></td></tr>

                                							<xsl:if test="notification_data/phys_item_display/call_number != ''">
                                							<tr><td><h4><b>@@call_number@@: </b><xsl:value-of select="notification_data/phys_item_display/call_number"/></h4></td></tr>
                                							</xsl:if>

                                						<xsl:if  test="notification_data/phys_item_display/shelving_location/string" >
                                							<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                							<tr>
                                								<td><b>@@shelving_location_for_item@@: </b>
                                								 <xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                									<xsl:value-of select="."/>
                                								 &#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                							<xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                							<tr>
                                								<td><b>@@shelving_locations_for_holding@@: </b>
                                								<xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                									<xsl:value-of select="."/>
                                								&#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                							<xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                							<tr>
                                								<td><b>@@shelving_locations_for_holding@@: </b>
                                								<xsl:for-each select="notification_data/phys_item_display/shelving_location/string">
                                									<xsl:value-of select="."/>
                                								&#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                						</xsl:if>
                                						<xsl:if  test="notification_data/phys_item_display/display_alt_call_numbers/string" >
                                							<xsl:if  test="notification_data/request/selected_inventory_type='ITEM'" >
                                							<tr>
                                								<td><b>@@alt_call_number@@: </b>
                                								 <xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                									<xsl:value-of select="."/>
                                								 &#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                							<xsl:if  test="notification_data/request/selected_inventory_type='HOLDING'" >
                                							<tr>
                                								<td><b>@@alt_call_number@@: </b>
                                								<xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                									<xsl:value-of select="."/>
                                								&#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                							<xsl:if  test="notification_data/request/selected_inventory_type='VIRTUAL_HOLDING'" >
                                							<tr>
                                								<td><b>@@alt_call_number@@: </b>
                                								<xsl:for-each select="notification_data/phys_item_display/display_alt_call_numbers/string">
                                									<xsl:value-of select="."/>
                                								&#160;
                                								 </xsl:for-each>
                                								</td>
                                							</tr>
                                							</xsl:if>
                                						</xsl:if>

                                					
</div>
                                			

                                	<!-- Add Resource Sharing Library if not designated as Resource Sharing -->
                                				
                                				<div>
                                <br></br>



                                					<p align="left" style="font-size:20px; font-family:oshkosh;bottom:0"><b>
                                							<xsl:call-template name="reverse">
                                								<xsl:with-param name="input" select="notification_data/phys_item_display/owning_library_name"/>
                                							</xsl:call-template>
                                						</b></p>
                                					<p style="font-size:14px; font-family:oshkosh;bottom:0" align="left">: si yrarbiL gninwO</p>
                                                                        <p style="font-size:18px; font-family:oshkosh;bottom:0" align="left">pordkoob ro ksed yrarbil nruteR nepO na ot nruteR</p></div>

			</xsl:otherwise>
			</xsl:choose></div>
								</td>
    </tr>


			</body>

		</html>


	</xsl:template>

	<xsl:template name="GetLastSegment">
		<xsl:param name="value" />
		<xsl:param name="separator" select="'.'" />

		<xsl:choose>
			<xsl:when test="contains($value, $separator)">
				<xsl:call-template name="GetLastSegment">
					<xsl:with-param name="value" select="substring-after($value, $separator)" />
					<xsl:with-param name="separator" select="$separator" />
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$value" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="reverse">
		<xsl:param name="input"/>
		<xsl:variable name="len" select="string-length($input)"/>
		<xsl:choose>
			<!-- Strings of length less than 2 are trivial to reverse -->
			<xsl:when test="$len &lt; 2">
				<xsl:value-of select="$input"/>
			</xsl:when>
			<!-- Strings of length 2 are also trivial to reverse -->
			<xsl:when test="$len = 2">
				<xsl:value-of select="substring($input,2,1)"/>
				<xsl:value-of select="substring($input,1,1)"/>
			</xsl:when>
			<xsl:otherwise>
				<!-- Swap the recursive application of this template to
               the first half and second half of input -->
				<xsl:variable name="mid" select="floor($len div 2)"/>
				<xsl:call-template name="reverse">
					<xsl:with-param name="input"
                         select="substring($input,$mid+1,$mid+1)"/>
				</xsl:call-template>
				<xsl:call-template name="reverse">
					<xsl:with-param name="input"
                         select="substring($input,1,$mid)"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>