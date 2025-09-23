<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:include href="style.xsl"/>

    <xsl:template match="/">
        <html lang="en" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/1999/xhtml">

            <!-- BEGIN global head -->
            <xsl:call-template name="libraryHeader"/> <!-- header.xsl -->
            <!-- END global head -->

            <body id="body" class="darkmode2 body" style="background-color:#F5F5F5;">
                <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: #F5F5F5;">
                    <tr>
                        <td>
                            <!-- Start of email -->
                            <table role="presentation" class="darkmode2" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: #F5F5F5;">
                                <xsl:call-template name="libraryLogo"/> <!-- header.xsl -->

                                <!-- Begin Email Content-->
                                <tr>
                                    <td align="center" valign="top" class="small-padding" style="padding-top: 40px;">
                                        <table class="mobileContent darkmode dark-border" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%; max-width: 600px!important; background-color: #ffffff; border: 1px solid #EBEBEB;">
                                            <tr>
                                                <td align="center" valign="top">
                                                    <table class="mainContent" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%; max-width: 500px!important;">
                                                        <tr>
                                                            <td style="margin: 0; padding: 30px 0;">
                                                                <h1 style="font-weight: normal; border-bottom: 1px solid lightgrey; padding-bottom: 10px; text-align: center; font-size: 20px!important;border-top: 1px solid lightgrey; padding-top: 13px;">
                                                                    Your Digital Request Is Ready for Download
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 20px 0 0;">
                                                                <xsl:call-template name="librarySalutation"/> 
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                We have completed making a digital version of the material you requested.
                                                                <br/><br/>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
                                                                    style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important;">
                                                                    
                                                                    <xsl:if test="string-length(notification_data/phys_item_display/title) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                <b>Title:</b><br/>
                                                                                <xsl:value-of select="notification_data/phys_item_display/title"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/note) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                <b>Request Note:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/note"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/external_id) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                <b>External ID:</b><br/>
                                                                                <xsl:value-of select="notification_data/external_id"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request_id) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                <b>Request ID:</b><br/>
                                                                                <xsl:value-of select="notification_data/request_id"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                </table>


                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><br/>You can: <br/></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <ul>
                                                                    <xsl:if test="notification_data/download_url_saml != ''">
                                                                        <li>
                                                                            <a href="{notification_data/download_url_saml}" target="_blank">Download your item directly</a>
                                                                       
                                                                        </li>
                                                                    </xsl:if>
                                                                    <li>   
                                                                        Sign in to your <a href="https://account.library.wisc.edu/" target="_blank">library account</a> to download your scanned items.
                                                                    </li>
                                                                </ul>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" width="100%" cellspacing="0" cellpadding="5" style="border-collapse: collapse;">
                                                                    <tr>
                                                                        <td style="margin: 0; padding: 0;">
                                                                            <br/><h2 style="padding: 0; margin: 0;"><b>Important Notice:</b></h2>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="margin: 0; padding: 10px 0; vertical-align: top;">
                                                                            This material will be deleted in 30 days.<br/>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="margin: 0; padding: 10px 0; vertical-align: top;">
                                                                            This digital copy is for your personal use only. In accordance with copyright law, do not copy, share, or distribute it.<br/>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="margin: 0; padding: 10px 0; vertical-align: top;">
                                                                            If you need any help, have questions, or if you need this document to be machine-readable for a disability accommodation, please reply to this email.<br/>
                                                                        </td>
                                                                    </tr>
                                                                </table>    
                                                            </td>
                                                        </tr>
                                                        <tr><td><br/></td></tr>
                                                        <tr>
                                                            <td>
                                                                <xsl:call-template name="ILLSignature"/> 
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