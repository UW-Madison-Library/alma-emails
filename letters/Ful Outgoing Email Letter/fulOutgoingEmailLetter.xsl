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
                                                                <h1 style="font-weight: normal; border-bottom: 1px solid lightgrey; padding-bottom: 10px; text-align: center; font-size: 20px!important; border-top: 1px solid lightgrey; padding-top: 13px;">
                                                                    The following is requested from your library
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 30px 0px 10px 0px;">
                                                                <xsl:call-template name="librarySalutation"/>
                                                            </td>
                                                        </tr>

                                                        <xsl:choose>
                                                            <xsl:when test="notification_data/request/needed_by !=''">
                                                                <tr>
                                                                    <td>
                                                                        <strong>@@requested_by@@: </strong>
                                                                        <xsl:value-of select="notification_data/request/needed_by"/>
                                                                    </td>
                                                                </tr>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <tr>
                                                                    <td>
                                                                        <strong>@@requested@@: </strong>
                                                                    </td>
                                                                </tr>
                                                            </xsl:otherwise>
                                                        </xsl:choose>

                                                        <tr>
                                                            <td>
                                                                <table role="presentation" cellspacing="0" cellpadding="5" border="0" style="width: 100%;">
                                                                    <xsl:attribute name="style">
                                                                        <xsl:call-template name="listStyleCss"/>
                                                                        <!-- style.xsl -->
                                                                    </xsl:attribute>

                                                                    <tr>
                                                                        <td>
                                                                            <strong> @@format@@: </strong>
                                                                            <xsl:value-of select="notification_data/request/display/material_type"/>
                                                                        </td>
                                                                    </tr>
                                                                    <xsl:if test="notification_data/request/display/title !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@title@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/title"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/journal_title !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@journal_title@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/journal_title"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/author !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@author@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/author"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/autho_initials !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@author_initials@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/autho_initials"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/publisher !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@publisher@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/publisher"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/place_of_publication !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@place_of_publication@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/place_of_publication"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/publication_date !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@publication_date@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/publication_date"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/year !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@year@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/year"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/edition !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@edition@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/edition"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/call_number !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@call_number@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/call_number"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/volume !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@volume@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/volume"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/issue !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@issue@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/issue"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/additional_person_name !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@additional_person_name@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/additional_person_name"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/source !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@source@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/source"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/series_title_number !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@series_title_number@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/series_title_number"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/isbn !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@isbn@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/isbn"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/issn !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@issn@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/issn"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/doi !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@doi@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/doi"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/pmid !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@pmid@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/pmid"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/note !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@note@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/note"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/chapter !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@chapter@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/chapter"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/volume_bk !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@volume@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/volume_bk"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/part !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@part@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/part"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/pages !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@pages@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/pages"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/start_page !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@start_page@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/start_page"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/display/end_page !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@end_page@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/display/end_page"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <xsl:if test="notification_data/request/note !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@request_note@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/note"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <tr>
                                                                        <td>
                                                                            <strong> @@date@@: </strong>
                                                                            <xsl:value-of select="notification_data/general_data/current_date"/>
                                                                        </td>
                                                                    </tr>
                                                                    <xsl:if test="notification_data/request/external_request_id !=''">
                                                                        <tr>
                                                                            <td>
                                                                                <strong> @@request_id@@: </strong>
                                                                                <xsl:value-of select="notification_data/request/external_request_id"/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <tr>
                                                                        <td>
                                                                            <strong> @@request_format@@: </strong>
                                                                            <xsl:value-of select="notification_data/request/format_display"/>
                                                                        </td>
                                                                    </tr>
                                                                    <xsl:choose>
                                                                        <xsl:when test="notification_data/request/max_fee !=''">
                                                                            <tr>
                                                                                <td>
                                                                                    <strong>@@maximum_fee@@: </strong>
                                                                                    <xsl:value-of select="notification_data/request/max_fee"/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:when>
                                                                    </xsl:choose>
                                                                    <xsl:choose>
                                                                        <xsl:when test="notification_data/level_of_service !=''">
                                                                            <tr>
                                                                                <td>
                                                                                    <strong>@@level_of_service@@: </strong>
                                                                                    <xsl:value-of select="notification_data/level_of_service"/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:when>
                                                                    </xsl:choose>
                                                                </table>
                                                            </td>
                                                        </tr>
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
                                        <xsl:call-template name="libraryFooter"/>
                                        <!-- footer.xsl -->
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