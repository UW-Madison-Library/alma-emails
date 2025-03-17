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
                                                                    Borrowed Items Declared Lost
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
                                                                <table cellspacing="0" cellpadding="0" border="0" style="margin-bottom: 20px;">
                                                                     <tr>
                                                                        <td style="margin: 0;">This is to inform you that the following items you borrowed have been declared lost:<br/><br/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <xsl:for-each select="notification_data">
                                                                                <table role="presentation" width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
                                                                                    style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;">

                                                                                    <xsl:if test="string-length(item_loan/title) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Lost Item:</b><br/>
                                                                                                <xsl:value-of select="item_loan/title"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(item_loan/description) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Description:</b><br/>
                                                                                                <xsl:value-of select="item_loan/description"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(item_loan/author) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Author:</b><br/>
                                                                                                <xsl:value-of select="item_loan/author"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(organization_unit/name) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Library:</b><br/>
                                                                                                <xsl:value-of select="organization_unit/name"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(item_loan/loan_date) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Loan Date:</b><br/>
                                                                                                <xsl:value-of select="item_loan/loan_date"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(item_loan/due_date) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Due Date:</b><br/>
                                                                                                <xsl:value-of select="item_loan/due_date"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(item_loan/barcode) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Barcode:</b><br/>
                                                                                                <xsl:value-of select="item_loan/barcode"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(phys_item_display/call_number) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Call Number:</b><br/>
                                                                                                <xsl:value-of select="phys_item_display/call_number"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>
                                                                                </table>
                                                                            </xsl:for-each>
                                                                        </td>
                                                                    </tr>
                                                                    <tr><td><br/><br/></td></tr>
                                                                     <tr>
                                                                                <td><h2 style="font-size: 18px; padding: 0; margin: 0;">Fees:</h2></td>
                                                                            </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <xsl:for-each select="notification_data/fines_fees_list/user_fines_fees">
                                                                               <table role="presentation" width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading listing" 
                                                                                    style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;">
                                                                                    
                                                                                    <xsl:if test="string-length(fine_fee_type_display) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Fee Type:</b><br/> <xsl:value-of select="fine_fee_type_display"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(fine_fee_ammount/normalized_sum) > 0 and string-length(fine_fee_ammount/currency) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Fee Amount:</b><br/> <xsl:value-of select="fine_fee_ammount/normalized_sum"/>&#160;<xsl:value-of select="fine_fee_ammount/currency"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(ff) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 15px 25px;">
                                                                                                <b>Notes:</b><br/> <xsl:value-of select="ff"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                </table>

                                                                            </xsl:for-each>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <br/>Check your <a href="https://account.library.wisc.edu/" style="color: #0073CE;" target="_blank">library account</a> or contact us directly for more information and details on how to pay any fees.
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
