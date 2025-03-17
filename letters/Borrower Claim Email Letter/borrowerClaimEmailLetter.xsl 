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
                                                                    A Material Request is still pending
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 30px 10px 20px 10px;  ">
                                                                Hello,
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding: 0px 10px;">
                                                                This is a friendly reminder that the following item was requested from 
                                                                <xsl:choose>
                                                                    <xsl:when test="notification_data/library/name != ''">
                                                                        <xsl:value-of select="notification_data/library/name"/>
                                                                    </xsl:when>
                                                                    <xsl:otherwise>
                                                                        your library
                                                                    </xsl:otherwise>
                                                                </xsl:choose>
                                                                on <xsl:value-of select="notification_data/request/last_send_date"/>:
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                                        <td><br/></td>
                                                                    </tr>
                                                        <tr>
                                                            <td style="padding: 0px 10px;">
                                                                <table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
                                                                        style="border-collapse: collapse; margin-bottom: 15px; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding: 20px;">
                                                                    
                                                                    <xsl:if test="string-length(notification_data/request/display/title) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Title:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/title"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/journal_title) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Journal Title:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/journal_title"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/author) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Author:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/author"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/author_initials) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Author Initials:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/author_initials"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/publisher) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Publisher:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/publisher"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/place_of_publication) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Place of Publication:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/place_of_publication"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/publication_date) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Publication Date:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/publication_date"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/year) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Year:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/year"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/edition) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Edition:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/edition"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/call_number) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Call Number:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/call_number"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/volume) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Volume:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/volume"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/issue) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Issue:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/issue"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/additional_person_name) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Additional Person Name:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/additional_person_name"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/source) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Source:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/source"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/series_title_number) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Series Title Number:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/series_title_number"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/isbn) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>ISBN:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/isbn"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/issn) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>ISSN:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/issn"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/doi) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>DOI:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/doi"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/pmid) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>PMID:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/pmid"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/note) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Note:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/note"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/chapter) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Chapter:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/chapter"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/volume_bk) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Volume (Book):</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/volume_bk"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/part) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Part:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/part"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/pages) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Pages:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/pages"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/start_page) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Start Page:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/start_page"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/display/end_page) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>End Page:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/display/end_page"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/note) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Request Note:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/note"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/general_data/current_date) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Date:</b><br/>
                                                                                <xsl:value-of select="notification_data/general_data/current_date"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/external_request_id) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Request ID:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/external_request_id"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/format_display) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Request Format:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/format_display"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/max_fee) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Maximum Fee:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/max_fee"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/level_of_service) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Level of Service:</b><br/>
                                                                                <xsl:value-of select="notification_data/level_of_service"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                    <xsl:if test="string-length(notification_data/request/needed_by) > 0">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                <b>Requested By:</b><br/>
                                                                                <xsl:value-of select="notification_data/request/needed_by"/><br/>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:if>

                                                                </table>


                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding: 0px 10px;">
                                                                <br/>
                                                                @@please_advise@@.
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="padding: 0px 10px;">
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
                                    <td align="center" style="padding: 0px 10px;">
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
