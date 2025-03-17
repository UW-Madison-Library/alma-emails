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
                                                                    Your Payment Receipt
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 10px 0px;">
                                                                <br/><xsl:call-template name="librarySalutation"/> 
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table role="presentation" cellspacing="0" cellpadding="0" border="0">
                                                                    <tr>
                                                                        <td>
                                                                           Thank you for your recent payment. This email serves as confirmation and receipt of your transaction. 
                                                                           If you have any questions regarding this receipt or your account, please feel free to contact us. <br/><br/>
                                                                        </td>
                                                                    </tr>
                                                                    <xsl:if  test="notification_data/transaction_id != ''" >
                                                                        <tr>
                                                                            <td><b>Transaction Number: </b><xsl:value-of select="/notification_data/transaction_id"/></td>
                                                                        </tr>
                                                                    </xsl:if>
                                                                    <tr>
                                                                        <td><b>Total Paid: </b><xsl:value-of select="notification_data/total_amount_paid"/><br/></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                           <h2 style="font-size: 16px; padding: 20px 0 5px 0; margin: 0;">Payment Details: </h2>
                                                                        </td>
                                                                    </tr>
																	<tr>
																		<td>
                                                                            <xsl:for-each select="notification_data/user_fines_fees_list/user_fines_fees">
                                                                                <table class="darkmode-heading" role="presentation" width="100%" cellspacing="0" cellpadding="5" 
                                                                                    style="border-collapse: collapse; margin-bottom: 15px; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px; padding-left: 20px; padding-right: 20px;">
                                                                                    
                                                                                    <xsl:if test="string-length(fine_fee_type_display) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                <b>Fee Type:</b><br/>
                                                                                                <xsl:value-of select="fine_fee_type_display"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(create_date) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                <b>Payment Date:</b><br/>
                                                                                                <xsl:value-of select="create_date"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>

                                                                                    <xsl:if test="string-length(fines_fee_transactions/fines_fee_transaction/transaction_ammount/currency) > 0 and string-length(fines_fee_transactions/fines_fee_transaction/transaction_amount_display) > 0">
                                                                                        <tr>
                                                                                            <td style="vertical-align: top; padding: 10px 20px;">
                                                                                                <b>Paid Amount:</b><br/>
                                                                                                <xsl:value-of select="fines_fee_transactions/fines_fee_transaction/transaction_ammount/currency"/>&#160;<xsl:value-of select="fines_fee_transactions/fines_fee_transaction/transaction_amount_display"/><br/>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </xsl:if>
                                                                                </table>
                                                                            </xsl:for-each>
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