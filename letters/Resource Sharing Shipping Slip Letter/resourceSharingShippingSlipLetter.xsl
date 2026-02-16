<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:include href="style.xsl" />
	<xsl:include href="header.xsl" />
	
	<!-- ========================================================================== -->
	<!--   Uncomment this if using the old styles sheet. Delete the dashes and !,in each line below-->
	<!--   xsl:include href="senderReceiver.xsl" /       	             		-->
	<!--   xsl:include href="mailReason.xsl" /   			                    -->
	<!--   xsl:include href="footer.xsl" /           		                	-->
	<!--   xsl:include href="recordTitle.xsl" /       		                	-->
	<!-- ========================================================================== -->
	<!--   Variable Block                              								-->
	<!--   Customize these values for each individual campus             			-->
	<!-- ========================================================================== -->

	<!-- Use the use_oshkosh_font variable to flip the "Return To" text: -->
	<!-- If the Oshkosh font is installed on the computer used for printing, it will display the text already flipped. -->
	<!-- If the font isn't available, CSS will try to flip the text — but this may not work in all programs (like Outlook). -->
	<xsl:variable name="use_oshkosh_font">true</xsl:variable>

	<!-- OCLC symbol (used on Minitex slip) -->
	<xsl:variable name="oclc_symbol">GZM</xsl:variable> 

	<!-- Mail return address header (used in footer_mail) -->
	<!-- Add billing code or other info here if needed -->
	<xsl:variable name="mail_return_address_header"> <!--<span>####</span><span style="float: right"><b>LIBRARY MAIL</b></span><br />--></xsl:variable>

	<!-- Mail return address (used in footer_mail) -->
    <xsl:variable name="mail_return_address"> 
		UW-Madison - ILL<br />
		Memorial Library<br />
		728 State Street, B106<br />
		Madison, WI 53706
	</xsl:variable>

	<!-- Set to true to show which slip type the template matched (for debugging) -->
	<xsl:variable name="debug_partner">false</xsl:variable> 

	<!-- Counter -->
	<xsl:variable name="counter" select="0"/>

	<!-- Partner Types -->
	<xsl:variable name="partner_type">
		<xsl:choose>
			<xsl:when test="starts-with(/notification_data/partner_code, '01UWI')">UW</xsl:when>
			<xsl:when test="starts-with(/notification_data/partner_name, 'University of Wisconsin')">UW_POD</xsl:when>
			<xsl:when test="starts-with(/notification_data/incoming_request/additional_borrower_information, 'Univ') and contains(/notification_data/incoming_request/additional_borrower_information, 'Wisc')">UW_POD</xsl:when>
			<xsl:when test="starts-with(/notification_data/incoming_request/pod_id, '537922422830000041')">SWITCH</xsl:when>
	        <xsl:when test="starts-with(/notification_data/incoming_request/external_request_id, '01SLCO')">SWITCH</xsl:when>
			<xsl:when test="starts-with(/notification_data/partner_code, '01SLCO')">SWITCH</xsl:when>
			<xsl:when test="starts-with(/notification_data/partner_code, 'A-G:STWI')">WI_PUBLIC</xsl:when>
			<xsl:when test="contains(/notification_data/incoming_request/pod_id, '381639321420000041')">MINITEX</xsl:when>
			<xsl:when test="contains(notification_data/incoming_request/note, 'Personal Delivery')">PERSONAL_DELIVERY</xsl:when>
			<xsl:otherwise>MAIL</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>



	<!-- ========================================================================== -->
	<!--   Shipping Headers                    		   								-->
	<!-- ========================================================================== -->

	<!-- Redbox Header: Displays "Supplied To" and the library name -->
	<xsl:template name="header_redbox">
		<xsl:param name="lib"/>
		<table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr>
				<td><h1><span style="font-size: 18px;">@@supplied_to@@:</span><br /><xsl:copy-of select="$lib"/></h1></td>
			</tr>
		</table>
	</xsl:template>

	<!-- Mail Header: Routes item to ILL with shipping address -->
	<xsl:template name="header_mail">
		<table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
			<tr>
				<td><h1 style="font-size: 18px;">Route to ILL for shipping</h1></td>
			</tr>
			<tr>
				<td style="padding: 10px 18px;">
					<xsl:value-of select="notification_data/alternate_symbol"/><br />
					<b><xsl:value-of select="notification_data/partner_name"/></b><br />
				</td>
			</tr>
			<xsl:for-each select="notification_data/partner_shipping_info_list/partner_shipping_info">
			<tr>
				<td>
					<!-- Output address lines 1–5, skipping empty ones -->
					<xsl:for-each select="address1 | address2 | address3 | address4 | address5">
						<xsl:if test="normalize-space(.)">
							<xsl:value-of select="."/><br />
						</xsl:if>
					</xsl:for-each>

					<!-- Output city, state, and postal code if city exists -->
					<xsl:if test="normalize-space(city)">
						<xsl:value-of select="city"/>,&#160;
						<xsl:value-of select="state_province"/>&#160;
						<xsl:value-of select="state"/>&#160;
						<xsl:value-of select="postal_code"/>
					</xsl:if>

					<!-- Output country -->
					<xsl:value-of select="country_display"/>
				</td>
			</tr>
			</xsl:for-each>
		</table>
	</xsl:template>


	<!-- Minitex Header: Placeholder for Minitex box shipments -->
	<xsl:template name="header_minitex">
		<!-- Minitex Boxes -->
	</xsl:template>


	<!-- ========================================================================== -->
	<!--   Shipping Footers                  		   								-->
	<!-- ========================================================================== -->

	<!-- Redbox Footer: Flips "Return To" text using font or CSS -->
	<xsl:template name="footer_redbox">
		<xsl:choose>
      <xsl:when test="$use_oshkosh_font = 'true'">
        <div class="abs_foot">
          <p align="left" style="font-size:20px; font-weight: bold; font-family:oshkosh; position: fixed; bottom: 0; padding-bottom: 25px;">
            <xsl:call-template name="reverse">
              <xsl:with-param name="input">
                <xsl:call-template name="libLookup"><xsl:with-param name="input" select="notification_data/item/library_name"/></xsl:call-template>
              </xsl:with-param>
            </xsl:call-template>
            <xsl:if test="contains(notification_data/organization_unit/name, 'Madison')">
              <div style="font-size:25px; font-weight: bold; font-family:oshkosh; position: fixed; bottom: 0; padding-bottom: 16px;" align="left">nosidaM-WU</div><br />
            </xsl:if></p>
            <p></p>
          <!--p style="font-size:14px; font-family:oshkosh; position: absolute; bottom: 0; padding-bottom: 2px;" align="left">:oT nruteR</p-->
        </div>
      </xsl:when>
      <xsl:otherwise>
        <div class="abs_foot" style="transform: rotate(180deg); -webkit-transform: rotate(180deg); margin: 0 1em; padding: 0 1em">
          <!--p style="font-size:14px;  position: fixed; bottom: 0;" align="left">Return to:</p--><br />
          <p align="left" style="font-size:25px; font-weight: bold; padding-bottom: 16px">
            <xsl:if test="contains(notification_data/organization_unit/name, 'Madison')">
              UW-Madison<br/>
            </xsl:if>
            <xsl:call-template name="libLookup">
              <xsl:with-param name="input" select="notification_data/item/library_name"/>
            </xsl:call-template>
          </p>
        </div>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

	<!-- Mail Footer: Displays return address and OCLC symbol -->
	<xsl:template name="footer_mail">
		<div style="border:1px solid black; padding:15px; font-size: 12px; float:right; width: 35%">
			Return To:<br/>
				<xsl:value-of select="$oclc_symbol"/> / <xsl:value-of select="/notification_data/organization_unit/code"/><br/>
				<xsl:copy-of select="$mail_return_address"/>
		</div>
		<br />
		<!--div style="position: absolute; bottom: 0; float:left; width: 40%; border: 1px solid black; padding: 10px; font-size: 26.7px;"-->
			<!-- Return Address Section -->
			<!--div style="padding-bottom: 12px; font-size: 12px; border-bottom: 1px solid black;"> 
				<xsl:copy-of select="$mail_return_address"/>
			</div-->

			<!-- Recipient Section -->
			<!--div style="padding: 10px 12.8px; font-size: 12px;"> 
				<b><xsl:value-of select="notification_data/partner_name"/></b><br />
				<xsl:for-each select="notification_data/partner_shipping_info_list/partner_shipping_info"-->
					<!-- Loop through address1-5, skipping blanks -->
					<!--xsl:for-each select="address1 | address2 | address3 | address4 | address5">
						<xsl:if test="normalize-space(.)">
							<xsl:value-of select="."/><br />
						</xsl:if>
					</xsl:for-each>
					<xsl:if test="normalize-space(city)">
						<xsl:value-of select="city"/>,&#160;<xsl:value-of select="state_province"/>&#160;<xsl:value-of select="state"/>&#160;<xsl:value-of select="postal_code"/>
					</xsl:if>
					<xsl:value-of select="country_display"/>
				</xsl:for-each>
			</div-->
		<!--/div-->
	</xsl:template>

	<!-- Minitex Footer: Currently empty -->
	<xsl:template name="footer_minitex">
		<!-- Placeholder for Minitex-specific footer -->
	</xsl:template>

	<!-- Based on slip created by SMU; modified by Linda Richter;
		Modifications include:
		* Added code to distinguish between institutions
		* Added templates to extract useful information from cluttered XML
		* Completely reformatted to match Minitex slips
		* Added in the Wisconsin Letter customizations so this can be used for both State Delivery Systems - KMS@Madison 20211227
	-->


	<xsl:template match="/">
		<html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/1999/xhtml">

			<!-- BEGIN global head for users with the new styles (comment out next line if you have not added new styles)-->
			<xsl:call-template name="systemHeader"/>
			<!-- END global head -->
			<!-- BEGIN uncomment out this block if you had to comment out the systemHeader line-->
				<!--head>
	    		<xsl:call-template name="generalStyle" />
    				<style>
					.barcode { font-family:"Barcode 3 of 9", "3 of 9 Barcode", "Libre Barcode 39"; font-size: 18px; padding-left: 2em }
					.messageBody, .abs_foot, .foot {width: 45% }
					h1 {  }
					@media print {
				    html { height: 95%; }
				    body { height: 100%; }
					.abs_foot { position: fixed; bottom: 5mm; left: 0; }
						}
	   			 </style>
      		  </head-->
		<!-- END special comment block needed for old styles.xsl-->
			<body id="body" class="body" style="padding: 0 36px;">
				<table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
					<tr>
						<td>
							<!-- Start of email -->
							<table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
								<tr>
									<!-- Letter starts here -->
									<td>
										<xsl:choose>
											
							<!-- ========================================================================== -->
							<!--   Personal Delivery                                                        -->
							<!-- ========================================================================== -->
						<xsl:when test="$partner_type = 'PERSONAL_DELIVERY'">
                        <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
                          <tr>
                          <td style="text-align: left;">
                            <h2 style="margin: 16px 0; font-size: 16px; font-weight: bold;">@@supplied_to@@:</h2>
                          </td>
                          </tr>
                          <tr>
                          <td style="text-align: left;">
                            <h2 style="margin: 16px 0; font-size: 32px; font-weight: bold;">
                            <xsl:value-of select="notification_data/partner_name"/> UW-Eau Claire - Personal Delivery
                            </h2>
                          </td>
                          </tr>
                        </table>
						</xsl:when>
											
                      <!-- ========================================================================== -->
                      <!--   UW Campus Delivery (includes Madison)                                    -->
                      <!--   Uses original UW lookup logic with added Madison handling                -->
                      <!-- ========================================================================== -->
                      <xsl:when test="$partner_type = 'UW'">
                        <xsl:call-template name="header_redbox">
                          <xsl:with-param name="lib">

                           <xsl:choose>
                               
                         <!-- If partner is UW-Madison, print "UW-Madison" and optional pickup -->
                            <xsl:when test="starts-with(notification_data/partner_code, '01UWI_MAD')">
                              <!-- compute pickup once -->
                              <xsl:variable name="note" select="/notification_data/incoming_request/note"/>
                              <xsl:variable name="pickup">
                                <xsl:call-template name="pickup">
                                  <xsl:with-param name="note" select="$note"/>
                                  <xsl:with-param name="borrowing-library"
                                                  select="/notification_data/incoming_request/borrowing_library"/>
                                </xsl:call-template>
                              </xsl:variable>

                              <xsl:text>UW-Madison</xsl:text>
                              <xsl:if test="normalize-space($pickup) != ''">
                                <xsl:text> - </xsl:text>
                                <xsl:value-of select="normalize-space($pickup)"/>
                              </xsl:if>
                              <br/>
                            </xsl:when>
                            <xsl:otherwise>
                            <!-- Then show the destination library name as before -->
                            <xsl:call-template name="libLookup">
                              <xsl:with-param name="input" select="notification_data/partner_name"/>
                            </xsl:call-template>
                            </xsl:otherwise>
                            </xsl:choose>
                          </xsl:with-param>
                        </xsl:call-template>
                      </xsl:when>

                        <!-- ========================================================================== -->
					    <!--  UWs in the pods                                                    		-->
						<!-- ========================================================================== -->
            
                      <xsl:when test="$partner_type = 'UW_POD'">
                        <xsl:call-template name="header_redbox">
                          <xsl:with-param name="lib">
                            <xsl:variable name="partner">
                              <xsl:choose>
                                <xsl:when test="/notification_data/partner_name = 'RAPID'">
                                  <xsl:value-of select="/notification_data/incoming_request/borrowing_institution" />
                                </xsl:when>
                                <xsl:otherwise>
                                  <xsl:value-of select="/notification_data/partner_name" />
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:variable>
                            <xsl:choose>
                              <xsl:when test="contains($partner, 'Madison')">
                                <xsl:variable name="note" select="/notification_data/incoming_request/note"/>
                                <xsl:variable name="pickup">
                                  <xsl:call-template name="pickup">
                                    <xsl:with-param name="note" select="$note"/>
                                    <xsl:with-param name="borrowing-library"
                                        select="/notification_data/incoming_request/borrowing_library"/>
                                  </xsl:call-template>
                                </xsl:variable>
                                <xsl:text>UW-Madison</xsl:text>
                                <xsl:if test="normalize-space($pickup) != ''">
                                  <xsl:text> - </xsl:text>
                                  <xsl:value-of select="normalize-space($pickup)"/>
                                </xsl:if>
                                <br/>
                              </xsl:when>

                              <xsl:when test="contains($partner, 'Fox Cities Library')">UW-Fox Cities</xsl:when>
                              <xsl:when test="contains($partner, 'Oshkosh')">UW-Oshkosh</xsl:when>
                              <xsl:when test="contains($partner, 'Polk Library')">UW-Oshkosh</xsl:when>
                              <xsl:when test="contains($partner, 'UW-Oshkosh Library')">UW-Oshkosh</xsl:when>
                              <xsl:when test="contains($partner, 'Barron Library')">UW-Barron</xsl:when>
                              <xsl:when test="contains($partner, 'McIntyre Library')">UW-Eau Claire</xsl:when>
                              <xsl:when test="contains($partner, 'Sheboygan Library')">UW-Sheboygan</xsl:when>
                              <xsl:when test="contains($partner, 'Green Bay Library')">UW-Green Bay</xsl:when>
                              <xsl:when test="contains($partner, 'Green Bay')">UW-Green Bay</xsl:when>
                              <xsl:when test="contains($partner, 'River Falls')">UW-River Falls</xsl:when>
                              <xsl:when test="contains($partner, 'Parkside')">UW-Parkside</xsl:when>
                              <xsl:when test="contains($partner, 'Rock County Library')">UW-Rock County</xsl:when>
                              <xsl:when test="contains($partner, 'Whitewater')">UW-Whitewater</xsl:when>
                              <xsl:when test="contains($partner, 'Wausau Library')">UW-Wausau</xsl:when>
                              <xsl:when test="contains($partner, 'Marshfield Library')">UW-Marshfield</xsl:when>
                              <xsl:when test="contains($partner, 'Stevens Point')">UW-Stevens Point</xsl:when>
							  <xsl:when test="contains($partner, 'UW Stout')">UW-Stout</xsl:when>
                              <xsl:when test="contains($partner, 'La Crosse')">UW-La Crosse</xsl:when>
							  <xsl:when test="contains($partner, 'Milwaukee')">UW-Milwaukee</xsl:when>
							  <xsl:when test="contains($partner, 'Superior')">UW-Superior</xsl:when>

                              <xsl:otherwise>  
                                <xsl:if test="notification_data/incoming_request/borrowing_institution">
                                  <xsl:value-of select="notification_data/incoming_request/borrowing_institution"/>
                                </xsl:if>
                                <xsl:if test="notification_data/partner_name">
                                  ||<xsl:value-of select="notification_data/partner_name"/>
                                </xsl:if>
                              </xsl:otherwise>
                            </xsl:choose>
                          </xsl:with-param>
                        </xsl:call-template>
                      </xsl:when>
   

						<!-- ========================================================================== -->
						<!--   SWITCH Redbox Delivery                                                   -->
						<!-- ========================================================================== -->
									<xsl:when test="$partner_type = 'SWITCH'">
									    <xsl:call-template name="header_redbox">
											<xsl:with-param name="lib">
												SWITCH -<br /><xsl:value-of select="normalize-space(substring-after(notification_data/partner_name, ('-')))"/>
											</xsl:with-param>
										</xsl:call-template>
									</xsl:when>


											<!-- ========================================================================== -->
											<!--   Wisconsin Public Libraries                                               -->
											<!-- ========================================================================== -->
											<xsl:when test="$partner_type = 'WI_PUBLIC'">
											<table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
												<tr>
												<td style="font-size: 16px; font-weight: normal; padding-bottom: 10px;">
													Route via Red Box or Mail<br />
													Return this slip with the item.
												</td>
												</tr>
												<tr>
												<td style="text-align: left; font-size: 16px; font-weight: bold; padding-top: 6px;">
													<h2 style="margin: 0; font-size: 16px; font-weight: bold;">@@supplied_to@@:</h2>
												</td>
												</tr>
												<xsl:for-each select="notification_data/partner_shipping_info_list/partner_shipping_info">
												<tr>
													<td style="text-align: left; font-size: 20px; font-weight: bold; padding-top: 6px;">
													<h2 style="margin: 0; font-size: 20px; font-weight: bold;">
														<xsl:value-of select="address2"/>
													</h2>
													</td>
												</tr>
												<tr>
													<td style="text-align: left; font-size: 16px; font-weight: bold;">
													Library: <xsl:value-of select="address1"/>
													</td>
												</tr>
												<tr>
													<td style="text-align: left; font-size: 14px;">
													<xsl:value-of select="address3"/>
													</td>
												</tr>
												<tr>
													<td style="text-align: left; font-size: 14px;">
													<xsl:value-of select="city"/>&#160;<xsl:value-of select="state_province"/>&#160;<xsl:value-of select="state"/>&#160;<xsl:value-of select="postal_code"/>
													</td>
												</tr>
												</xsl:for-each>
											</table>
											</xsl:when>


											<!-- ========================================================================== -->
											<!--   Minitex Delivery                                              		    -->
											<!-- ========================================================================== -->
											<xsl:when test="$partner_type = 'MINITEX'">
												<table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 20px;">
													<tr>
													<td style="font-size: 16px;">
														Route via Minitex Courier<br />
														Return this slip with the item.
													</td>
													</tr>
												</table>

												<!-- Borrower Section -->
												<table role="presentation" width="100%" cellspacing="0" cellpadding="10" border="1" style="border-collapse: collapse; margin-bottom: 20px;">
													<tr>
													<td>
														<b>@@supplied_to@@:</b><br />

														<!-- Borrower Code -->
														<div style="font-size: 40px; font-weight: bold; padding-bottom: 20px; text-align: left;">
														<xsl:choose>
															<xsl:when test="contains(notification_data/partner_name, 'Ireland Library')">SSE</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'Keffer Library')">MNTMP</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'Thomas - Law Library')">TL#</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'Shaughnessy-Frey Library')">MNT</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'Bethel')">MNK</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'Hamline')">MHA</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'Bridge')">MNO</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'MORRIS Briggs')">MNX</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'DULUTH Martin')">MND</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'CROOKSTON Moe')">MCR</xsl:when>
														    <xsl:when test="contains(notification_data/partner_name, 'TC Law')">MLL</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'University of Minnesota')">MNU</xsl:when>
															<xsl:when test="contains(notification_data/partner_name, 'Minitex')">MII</xsl:when>
														</xsl:choose>
														</div>

														<!-- Barcode -->
														<div class="barcode" style="padding-left: 0; text-align: center; font-size: 30px;">
														*<xsl:value-of select="notification_data/group_qualifier"/>*
														</div>

														<!-- Borrower Details -->
														<b>@@borrower_reference@@: </b><xsl:value-of select="notification_data/group_qualifier"/><br />
														<b>Borrower: </b><xsl:value-of select="notification_data/partner_name"/><br />
														<b>Request Date: </b><xsl:value-of select="notification_data/incoming_request/create_date"/><br />
														<b>Due Date: </b>_______________________________________<br />
													</td>
													</tr>
												</table>

												<!-- Lender Section -->
												<table role="presentation" width="100%" cellspacing="0" cellpadding="10" border="1" style="border-collapse: collapse;">
													<tr>
													<td>
														<b>Return to:</b><br />

														<!-- Lender Code -->
														<div style="font-size: 40px; font-weight: bold; padding-bottom: 20px;">
														<xsl:value-of select="$oclc_symbol"/>
														</div>

														<!-- Lender Details -->
														<b>Lender: </b><xsl:value-of select="notification_data/item/library_name"/><br /><br /><br />
														<b>@@external_identifier@@: </b><xsl:value-of select="notification_data/group_qualifier"/><br />
														<b>Printed Date: </b><xsl:value-of select="notification_data/incoming_request/print_slip_date"/><br />
														<b>@@date_needed_by@@: </b><xsl:value-of select="notification_data/incoming_request/needed_by"/><br />
													</td>
													</tr>
												</table>
											</xsl:when>



											<!-- ========================================================================== -->
											<!--   Default Fallback - Mail Delivery                                         -->
											<!-- ========================================================================== -->
											<xsl:otherwise>
												<xsl:call-template name="header_mail"/>
											</xsl:otherwise>
										</xsl:choose>
									</td>
								</tr>
								<tr>
									<td>
										<!-- START Requested item  -->
										<xsl:call-template name="request_info"/>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<!--BEGIN global footer-->
					<tr>
						<td>
							<xsl:choose>
								<!-- ========================================================================== -->
								<!--   Wisconsin Footer (UW, UW_POD, SWITCH, WI_PUBLIC)                         -->
								<!-- ========================================================================== -->
								<xsl:when test="$partner_type = 'UW' or  
												$partner_type = 'UW_POD' or
												$partner_type = 'SWITCH' or
												$partner_type = 'WI_PUBLIC'">
									<xsl:call-template name="footer_redbox"/>
								</xsl:when>


								<!-- ========================================================================== -->
								<!--   Minitex Footer                                                           -->
								<!-- ========================================================================== -->
								<xsl:when test="$partner_type = 'MINITEX'">
									<xsl:call-template name="footer_minitex"/>
								</xsl:when>


								<!-- ========================================================================== -->
								<!--   Default Mail Footer                                                     -->
								<!-- ========================================================================== -->
								<xsl:otherwise>
									<xsl:call-template name="footer_mail"/>			
								</xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
					
					<!-- ========================================================================== -->
					<!--   DEBUG Partner Type Output                                                -->
					<!-- ========================================================================== -->
					<xsl:if test="$debug_partner = 'true'">
						<tr>
							<td>
								<h1 style="color: red">
									<xsl:value-of select="$partner_type"/>
								</h1>
							</td>
						</tr>
					</xsl:if>
				</table>
			</body>
		</html>
	</xsl:template>


	<!-- ========================================================================= -->
	<!--   Reverse Template                                                        -->
	<!--   Recursively reverses a string                                           -->
	<!--   Example: "ABC" becomes "CBA"                                            -->
	<!-- ========================================================================= -->
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


	<!-- ========================================================================== -->
	<!--   Template: request_info                                                   -->
	<!--   Displays request details for the item, including title, author,          -->
	<!--   barcode(s), due date, and optional metadata like volume or format.       -->
	<!--   Also handles multi-barcode items and includes conditional display for    -->
	<!--   optional fields like ISSN and shelving location.                         -->
	<!-- ========================================================================== -->	
	<xsl:template name="request_info">
		
		<!-- ======================== Group Qualifier + Barcode ======================== -->
		<p align="left" style="font-size:20px;">
			<xsl:if test="notification_data/group_qualifier">
				<b>@@group_qualifier@@: </b>
				<xsl:value-of select="notification_data/group_qualifier"/><br /><br />
				<span class="barcode">*<xsl:value-of select="notification_data/group_qualifier"/>*</span>
			</xsl:if>
		</p>

		<!-- ======================== Due Date & Reminder ============================== -->
		<p align="left" style="font-size:20px; font-weight:bold;">Due date:_____________</p>
		<p align="left" style="font-size:25px; font-weight:bold;">Please do not remove this slip.</p>


		<!-- ======================== Multi-barcode Warning ============================ -->
		<xsl:if test="notification_data/incoming_request/multi_barcode_visible = 'true'">
			<br />
			<div style="font-size: larger; background: #CCC">
				<b>MULTIPLE BARCODES:</b><br />
				This request has <b><xsl:value-of select="count(/notification_data/multi_barcodes/string)"/></b> items
			</div>
		</xsl:if>
		<br />

		<!-- ======================== Bibliographic Information ======================== -->
		<p align="left" style="font-size:18px;">
		<b>@@title@@: </b><xsl:value-of select="notification_data/metadata/title"/><br />
		<b>@@author@@: </b><xsl:value-of select="notification_data/metadata/author"/><br />
		<xsl:if test="notification_data//metadata/issn != ''">
			<b>@@issn@@: </b><xsl:value-of select="notification_data/metadata/issn"/><br />
		</xsl:if></p>
		<!--
		<xsl:if test="notification_data/metadata/isbn != ''">
			<b>@@isbn@@: </b><xsl:value-of select="notification_data/items/physical_item_display_for_printing/isbn"/><br />
		</xsl:if>
		<b>@@publisher@@: </b><xsl:value-of select="notification_data/metadata/publisher"/>, &#160;<xsl:value-of select="notification_data/metadata/place_of_publication"/><br />
		<b>@@publication_date@@: </b><xsl:value-of select="notification_data/metadata/publication_date"/><br />
		-->


		<!-- ======================== Call Number & Shelving Info ======================== -->
		<b>@@call_number@@: </b><xsl:value-of select="notification_data/item/call_number"/><br />
		<xsl:if test="shelving_location/string">
			<b>@@shelving_location_for_item@@: </b>
			<xsl:for-each select="shelving_location/string">
				<xsl:value-of select="."/>&#160;
			</xsl:for-each>
		</xsl:if>


		<!-- ======================== Barcode(s) Output ======================== -->
		<xsl:if test="notification_data/item">
			<xsl:choose>
				<xsl:when test="notification_data/incoming_request/multi_barcode_visible = 'true'">
					<div style="font-size: larger; font-weight: bold; background: #CCC">
						This request has <xsl:value-of select="count(/notification_data/multi_barcodes/string)"/> items.
					</div>
					<b>Item Barcodes: </b><br />
					<xsl:for-each select="/notification_data/multi_barcodes/string">
						<xsl:value-of select="."/><br />
					</xsl:for-each>
				</xsl:when>
				<xsl:otherwise>
					<b>@@item_barcode@@: </b>
					<xsl:value-of select="notification_data/item/barcode"/><br />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		
		
		<!-- ======================== Optional Metadata Fields ======================== -->
		<xsl:if test="notification_data/metadata/edition != ''">
			<b>@@edition@@: </b>
			<xsl:value-of select="notification_data/items/physical_item_display_for_printing/edition"/><br />
		</xsl:if>
		<xsl:if test="notification_data/metadata/journal_title != ''">
			<b>@@journal_title@@: </b>
			<xsl:value-of select="notification_data/metadata/journal_title"/><br />
		</xsl:if>
		<xsl:if test="notification_data/metadata/volume != ''">
			<b>@@volume@@: </b>
			<xsl:value-of select="notification_data/metadata/volume"/><br />
		</xsl:if>
		<xsl:if test="notification_data/metadata/issue != ''">
			<b>@@issue@@: </b>
			<xsl:value-of select="notification_data/metadata/issue"/><br />
		</xsl:if>
		<xsl:if test="notification_data/incoming_request/format">
			<b>@@format@@: </b>
			<xsl:value-of select="notification_data/incoming_request/format"/> -
			<xsl:value-of select="notification_data/metadata/material_type"/>
			<br />
		</xsl:if>


		<!-- ======================== Request Notes ======================== -->
		<b>@@request_note@@: </b>
		<xsl:value-of select="notification_data/metadata/note"/><br/>		
		<xsl:choose>
		<xsl:when test="contains(notification_data/incoming_request/note, '||')">
			<xsl:value-of select="substring-before(notification_data/incoming_request/note, '||')"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="notification_data/incoming_request/note"/>
		</xsl:otherwise>
		</xsl:choose>
	
</xsl:template>

<xsl:template name="pickup">
  <xsl:param name="note"/>
  <xsl:param name="borrowing-library"/>

  <!-- Uppercase copy of the note for case-insensitive checks -->
  <xsl:variable name="NOTE_UP"
                select="translate($note,
                                   'abcdefghijklmnopqrstuvwxyz',
                                   'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>

  <!-- Branch 1: note contains 'PICKUP AT:' (any casing) -->
  <xsl:variable name="has-pickup-at"
                select="contains($NOTE_UP, 'PICKUP AT:')"/>

  <xsl:variable name="after-pickup">
    <xsl:choose>
      <!-- Try common casings so substring-after finds the right split in XSLT 1.0 -->
      <xsl:when test="$has-pickup-at">
        <xsl:variable name="a1" select="substring-after($note, 'Pickup at:')"/>
        <xsl:variable name="a2" select="substring-after($note, 'PICKUP AT:')"/>
        <xsl:variable name="a3" select="substring-after($note, 'pickup at:')"/>
        <xsl:choose>
          <xsl:when test="string-length($a1) &gt; 0"><xsl:value-of select="$a1"/></xsl:when>
          <xsl:when test="string-length($a2) &gt; 0"><xsl:value-of select="$a2"/></xsl:when>
          <xsl:otherwise><xsl:value-of select="$a3"/></xsl:otherwise>
        </xsl:choose>
      </xsl:when>

      <!-- Branch 2: fall back to your last-segment UW parsing -->
      <xsl:otherwise>
        <xsl:variable name="last-segment">
          <xsl:call-template name="getLastSegment">
            <xsl:with-param name="text" select="$note"/>
            <xsl:with-param name="delimiter" select="'||'"/>
          </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="normalize-space($last-segment)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <!-- If there’s a '||' after the pickup text, trim it; otherwise just normalize -->
  <xsl:variable name="pickup-clean">
    <xsl:choose>
      <xsl:when test="contains($after-pickup, '||')">
        <xsl:value-of select="normalize-space(substring-before($after-pickup, '||'))"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="normalize-space($after-pickup)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>

  <!-- Final fallback to borrowing-library if we still have nothing -->
  <xsl:choose>
    <xsl:when test="string-length(normalize-space($pickup-clean)) &gt; 0">
      <xsl:value-of select="$pickup-clean"/>
    </xsl:when>
    <xsl:when test="normalize-space($borrowing-library) != ''">
      <xsl:value-of select="normalize-space($borrowing-library)"/>
    </xsl:when>
    <xsl:otherwise>____________</xsl:otherwise>
  </xsl:choose>
</xsl:template>


<xsl:template name="getLastSegment">
    <xsl:param name="text"/>
    <xsl:param name="delimiter"/>
    
    <xsl:choose>
        <xsl:when test="contains(substring-after($text, $delimiter), $delimiter)">
            <xsl:call-template name="getLastSegment">
                <xsl:with-param name="text" select="substring-after($text, $delimiter)"/>
                <xsl:with-param name="delimiter" select="$delimiter"/>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="contains($text, $delimiter)">
            <xsl:value-of select="substring-after($text, $delimiter)"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="$text"/>
        </xsl:otherwise>
    </xsl:choose>
    
</xsl:template>
	
</xsl:stylesheet>
