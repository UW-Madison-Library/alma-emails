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
                                                                    Information Request from UW-Madison Libraries
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 30px 0px 20px 0px;  ">
                                                                Hello,
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 10px;">
                                                                    <tr>
                                                                        <td>
									                                        We'd like to inform you about the following request:<br/><br/>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
                                                                        style="border-collapse: collapse; margin-bottom: 15px; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding: 20px;">
                                                                
                                                                    <xsl:if test="notification_data/request/external_request_id != ''">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Request ID: </b>
                                                                                <xsl:value-of select="notification_data/request/external_request_id" />
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="notification_data/request/display/title != ''">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Title: </b>
                                                                                <xsl:value-of select="notification_data/request/display/title" />
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="notification_data/request/display/author != ''">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Author: </b>
                                                                                <xsl:value-of select="notification_data/request/display/author" />
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="notification_data/request/create_date_str != ''">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Request Date: </b>
                                                                                <xsl:value-of select="notification_data/request/create_date_str" />
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="notification_data/note_to_partner != ''">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Note: </b>
                                                                                <xsl:value-of select="notification_data/note_to_partner" />
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

