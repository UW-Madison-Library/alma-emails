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
                            <table role="presentation" class="darkmode2" width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: #F5F5F5;">
                                <xsl:call-template name="libraryLogo"/>

                                <!-- Begin Email Content-->
                                <tr>
                                    <td align="center" valign="top" class="small-padding" style="padding-top: 40px;">
                                        <table class="mobileContent darkmode dark-border" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%; max-width: 600px!important; background-color: #ffffff; border: 1px solid #EBEBEB;">
                                            <tr>
                                                <td align="center" valign="top" style="padding: 20px;">
                                                    <table class="mainContent" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%; max-width: 500px !important;">
                                                        <tr>
                                                            <td style="margin: 0; padding: 10px 0;">
                                                                <h1 style="font-weight: normal; border-bottom: 1px solid lightgrey; padding-bottom: 10px; text-align: center; font-size: 20px!important;border-top: 1px solid lightgrey; padding-top: 13px;">
                                                                    Borrowed by Proxy Patron
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 30px 0px 10px 0px;">
                                                                <xsl:call-template name="librarySalutation"/> 
                                                            </td>
                                                        </tr>
                                                        <!-- Place this under the <h1> "Your Library Account Activity" -->
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 20px;">
                                                                    <xsl:if test="notification_data/message">
                                                                        <tr>
                                                                            <td>
                                                                                Your recent request was picked up by your proxy, 
                                                                            <xsl:for-each select="notification_data">
                                                                               <xsl:choose>
                                                                                   <xsl:when test="borrower/preferred_first_name !=''">
                                                                                    <xsl:value-of select="borrower/preferred_first_name"/>&#160;<xsl:value-of select="borrower/preferred_last_name"/>. <br/><br/>
                                                                                    </xsl:when>
                                                                                    <xsl:otherwise>
                                                                                         <xsl:value-of select="borrower/name"/>&#160;<xsl:value-of select="borrower/name"/>. <br/><br/>
                                                                                    </xsl:otherwise>
                                                                                </xsl:choose>
                                                                            </xsl:for-each>
                                                                            </td>
                                                                        </tr>
                                                                     
                                                                        <tr>
                                                                            <td>
                                                                                Please access your <a href="https://account.library.wisc.edu/" target="_blank">library account</a> for due date information.
                                                                                <br/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                        <xsl:if test="notification_data/phys_item_display/title">
                                                                            <tr>
                                                                                <td><br/></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td><h2 style="font-size: 18px; padding: 0; margin: 0;">Loans</h2></td>
                                                                            </tr>
                                                                            <tr>
                                                                            <td>
                                                                                    <table role="presentation" width="100%" cellspacing="0" cellpadding="5" style="border-collapse: collapse;">
                                                                                        <xsl:for-each select="notification_data/phys_item_display">
                                                                                            <tr>
                                                                                                 <td style="padding: 0; padding-top: 10px;">
                                                                                                    <table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
                                                                                                        style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px;">
                                                                                                        
                                                                                                        <xsl:if test="string-length(title) > 0">
                                                                                                            <tr>
                                                                                                                <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                                    <b>Title:</b><br/>
                                                                                                                    <xsl:value-of select="title"/><br/>
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


