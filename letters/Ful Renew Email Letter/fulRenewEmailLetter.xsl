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
                                                    <table class="mainContent" border="0" cellpadding="0" cellspacing="0" role="presentation" style="width: 100%; max-width: 500px!important;">
                                                        <tr>
                                                            <td style="margin: 0; padding: 10px 0;">
                                                                <h1 style="font-weight: normal; border-bottom: 1px solid lightgrey; padding-bottom: 10px; text-align: center; font-size: 20px!important;border-top: 1px solid lightgrey; padding-top: 13px;">
                                                                    Renewal Request from UW-Madison Libraries
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
                                                                <table role="presentation" cellspacing="0" cellpadding="0" border="0">
                                                                    <xsl:choose>
                                                                        <xsl:when test="notification_data/request/needed_by !=''">
                                                                            <tr>
                                                                                <td>
                                                                                    The following is needed by:
                                                                                    <xsl:value-of select="notification_data/request/needed_by"/>
                                                                                </td>
                                                                            </tr>
                                                                        </xsl:when>
                                                                        <xsl:otherwise>
                                                                            <tr>
                                                                                <td>
                                                                                    We'd like to renew the loan listed below. Please let us know if it can be extended and what the new due date will be.
                                                                                </td>

                                                                            </tr>
                                                                        </xsl:otherwise>
                                                                    </xsl:choose>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>     
                                                                <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0" style="margin-top: 20px; margin-bottom: 20px;">
                                                                    <tr>
                                                                        <td style="padding-top: 10px; ">                          
                                                                            <table role="presentation" width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
                                                                                style="border-collapse: collapse; margin-bottom: 15px; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important;">

                                                                                <xsl:if test="notification_data/request/display/material_type != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Format: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/material_type" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/title != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Title: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/title" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/journal_title != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Journal Title: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/journal_title" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/author != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Author: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/author" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/author_initials != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Author Initials: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/author_initials" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/publisher != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Publisher: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/publisher" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/place_of_publication != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Place of Publication: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/place_of_publication" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/date != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Publication Date: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/date" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/year != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Year: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/year" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/edition != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Edition: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/edition" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/call_number != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Call Number: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/call_number" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/volume != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Volume: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/volume" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/issue != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Issue: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/issue" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/additional_person_name != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Additional Person Name: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/additional_person_name" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/source != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Source: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/source" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/series_title_number != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Series Title Number: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/series_title_number" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/isbn != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>ISBN: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/isbn" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/issn != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>ISSN: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/issn" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/doi != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>DOI: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/doi" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/pmid != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>PMID: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/pmid" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/note != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Note: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/note" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/chapter != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Chapter: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/chapter" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/volume_bk != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Volume: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/volume_bk" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/part != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Part: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/part" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/pages != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Pages: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/pages" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/start_page != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Start Page: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/start_page" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/display/end_page != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>End Page: </b>
                                                                                            <xsl:value-of select="notification_data/request/display/end_page" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <xsl:if test="notification_data/request/note != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Request Note: </b>
                                                                                            <xsl:value-of select="notification_data/request/note" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <tr>
                                                                                    <td style="vertical-align: top; padding: 15px 25px;">
                                                                                        <b>Date: </b>
                                                                                        <xsl:value-of select="notification_data/general_data/current_date" />
                                                                                    </td>
                                                                                </tr>

                                                                                <xsl:if test="notification_data/request/external_request_id != ''">
                                                                                    <tr>
                                                                                        <td style="vertical-align: top; padding: 15px 25px;">
                                                                                            <b>Request ID: </b>
                                                                                            <xsl:value-of select="notification_data/request/external_request_id" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </xsl:if>

                                                                                <tr>
                                                                                    <td style="vertical-align: top; padding: 15px 25px;">
                                                                                        <b>Request Format: </b>
                                                                                        <xsl:value-of select="notification_data/request/format_display" />
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td style="vertical-align: top; padding: 15px 25px;">
                                                                                        <b>Receiving Date: </b>
                                                                                        <xsl:value-of select="notification_data/request/item_arrival_date" />
                                                                                    </td>
                                                                                </tr>

                                                                                <tr><td>&#xA0;</td></tr>

                                                                                <tr>
                                                                                    <td style="vertical-align: top; padding: 15px 25px;">
                                                                                        <b>Original Due Date: </b>
                                                                                        <xsl:value-of select="notification_data/request/due_date" />
                                                                                    </td>
                                                                                </tr>

                                                                                <tr>
                                                                                    <td style="vertical-align: top; padding: 15px 25px;">
                                                                                        <b>Desired Due Date: </b>
                                                                                        <xsl:value-of select="notification_data/request/desired_due_date" />
                                                                                    </td>
                                                                                </tr>

                                                                                <tr><td>&#xA0;</td></tr>

                                                                                <tr>
                                                                                    <td style="vertical-align: top; padding: 15px 25px;">
                                                                                        <b>Note to Partner: </b>
                                                                                        <xsl:value-of select="notification_data/note_to_partner" />
                                                                                    </td>
                                                                                </tr>

                                                                                <xsl:choose>
                                                                                    <xsl:when test="notification_data/request/max_fee != ''">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Fee: </b>
                                                                                                <xsl:value-of select="notification_data/request/max_fee" />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:when>
                                                                                </xsl:choose>

                                                                            </table>
                                                                        </td>
                                                                    </tr>
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