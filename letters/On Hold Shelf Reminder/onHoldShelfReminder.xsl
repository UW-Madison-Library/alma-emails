<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:include href="style.xsl"/>

    <xsl:template match="/">
        <html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/1999/xhtml">

            <!-- BEGIN global head -->
            <xsl:call-template name="libraryHeader"/>
            <!-- END global head -->

            <body id="body" class="darkmode2 body" style="background-color:#F5F5F5;">
                <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: #F5F5F5;">
                    <tr>
                        <td>
                            <!-- Start of email -->
                            <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" class="darkmode2" style="background-color: #F5F5F5;">
                                <xsl:call-template name="libraryLogo"/> 

                                <!-- Begin Email Content-->
                                <tr>
                                    <td align="center" valign="top" class="small-padding" style="padding-top: 40px;">
                                        <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" class="mobileContent darkmode dark-border" style="width: 100%; max-width: 600px!important; background-color: #ffffff; border: 1px solid #EBEBEB;">
                                            <tr>
                                                <td align="center" valign="top" style="padding: 20px;">
                                                    <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" class="mainContent" style="width: 100%; max-width: 500px!important;">
                                                        <tr>
                                                            <td style="margin: 0; padding: 10px 0;">
                                                                <h1 style="font-weight: normal; border-bottom: 1px solid lightgrey; padding-bottom: 10px; text-align: center; font-size: 20px!important;border-top: 1px solid lightgrey; padding-top: 13px;">
                                                                    Reminder: Your Library Items Are Still Available
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="margin: 0; padding: 25px 0px 10px 0px;">
                                                                <xsl:call-template name="librarySalutation" /> 
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 20px; width: 500px;">
                                                                    <!-- Begin Email Content-->
                                                                    <tr>
                                                                        <td>
                                                                            This is a friendly reminder that you have items waiting to pick up at <b><xsl:value-of select="/notification_data/requests_by_library/library_requests_for_display/requests/request_for_display/request/assigned_unit_name" /></b>. <br/><br/>
                                                                        </td>
                                                                    </tr>
                                                                    <xsl:choose>
                                                                        <!-- Memorial Library -->
                                                                        <xsl:when test="contains(notification_data/requests_by_library/library_requests_for_display/requests/request_for_display/request/assigned_unit_name, 'Memorial Library')">
                                                                            <tr>
                                                                                <td>How would you like to pick up your items?<br/></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <ol>
                                                                                        <li style="padding-bottom: 10px; font-size: 16px;">
                                                                                            <a href="https://www.library.wisc.edu/memorial/about-memorial/library-hours/" target="_blank" style="color: #0073CE;">Visit Memorial Library</a> during open hours to pick up your items.
                                                                                        </li>
                                                                                        <li style="font-size: 16px;">
                                                                                            <a href="https://pickup.library.wisc.edu/" target="_blank" style="color: #0073CE;">Schedule a Pickup Appointment</a>. We will check out your held items and have them ready for you at the scheduled time. More details are available on our <a href="https://go.wisc.edu/PickupAppointment" target="_blank" style="color: #0073CE;">Pickup by Appointment FAQ</a> page.
                                                                                        </li>
                                                                                    </ol>
                                                                                    <br/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:when>

                                                                        <!-- Default -->
                                                                        <xsl:otherwise>
                                                                            <tr>
                                                                                <td style="padding-bottom: 20px;  ">
                                                                                    Please visit <a href="https://www.library.wisc.edu/locations/" target="_blank" style="color: #0073CE;">our locations page</a> for hours and contact information.
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:otherwise>
                                                                    </xsl:choose>

                                                                    <xsl:for-each select="notification_data/requests_by_library/library_requests_for_display">
                                                                        <tr>
                                                                            <td>
                                                                                <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 30px;">
                                                                                    <xsl:for-each select="requests/request_for_display">
                                                                                        <tr>
                                                                                            <td style="padding-top: 20px;">
                                                                                                <table width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
                                                                                                    style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;">
                                                                                                    
                                                                                                    <xsl:if test="string-length(phys_item_display/title) > 0">
                                                                                                        <tr>
                                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                                <b>Title:</b><br/>
                                                                                                                <xsl:value-of select="phys_item_display/title"/><br/>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </xsl:if>

                                                                                                    <xsl:if test="string-length(request/work_flow_entity/expiration_date) > 0">
                                                                                                        <tr>
                                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                                <b>Your item will remain available for pickup until:</b><br/>
                                                                                                                <xsl:value-of select="request/work_flow_entity/expiration_date"/><br/>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </xsl:if>

                                                                                                </table>
                                                                                                
                                                                                            </td>
                                                                                        </tr>

                                                                                    </xsl:for-each>

                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:for-each>
                                                                
                                                                    <xsl:if test="notification_data/user_for_printing/blocks != ''">
                                                                        <tr>
                                                                            <td style="margin: 0; padding: 0;">
                                                                                <h2 style="padding: 0;">Additional Information About Your Loan: </h2> 
                                                                                <xsl:value-of select="notification_data/user_for_printing/blocks"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                        
                                                                </table>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <xsl:call-template name="circulationSignature"/> 
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <!--BEGIN global footer-->
                                <tr>
                                    <td align="center" style="padding: 0px 15px;">
                                        <xsl:call-template name="libraryFooter"/> <!-- footer.xsl -->
                                    </td>
                                </tr>
                                <!--END global footer-->
                            </table>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>