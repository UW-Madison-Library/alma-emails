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
                                                                   Lost Item Replacement Fee Refund
                                                                </h1>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" valign="top" style="padding: 30px 0px 10px 0px;">
                                                                <xsl:call-template name="librarySalutation"/> 
                                                            </td>
                                                        </tr>
                                                        <!-- Place this under the <h1> "Your Library Account Activity" -->
                                                    <xsl:for-each select="notification_data">
			                                        	<table role='presentation' >
                                                            <tr>
                                                                <td><strong>Title: </strong> <xsl:value-of select="item_loan/title"/>
                                                            <br />
                                                                <strong>Loan Details: </strong><xsl:value-of select="item_loan/description"/>
                                                            <br />
                                                                <strong>Author: </strong><xsl:value-of select="item_loan/author"/>
                                                            <br />
                                                                <strong>Library: </strong><xsl:value-of select="organization_unit/name"/>
                                                            <br />
                                                                <strong>Loan Date: </strong><xsl:value-of select="item_loan/loan_date"/>
                                                            <br />
                                                                <strong>Due Date: </strong><xsl:value-of select="item_loan/due_date"/>
                                                            <br /> <br />
                                                                According to library policies, your account balance will be credited.  Below are the details of charges and credits due to this loan.
                                                            <br />  <br />
                                                            </td>
                                                            </tr>
                                                        </table>
                                                   </xsl:for-each>

                                                <table role='presentation'  cellpadding="5" class="listing">
                                                    <xsl:attribute name="style">
                                                        <xsl:call-template name="mainTableStyleCss" /> <!-- style.xsl -->
                                                    </xsl:attribute>
                                                        <tr>
                                                            <th>Fee Type</th>
                                                            <th align="right" width="10">Fee Amount</th>
                                                            <th>Note</th>
                                                        </tr>
                                                        <xsl:for-each select="notification_data/fines_fees_list/user_fines_fees">
                                                        <tr>
                                                            <td><xsl:value-of select="fine_fee_type_display"/></td>
                                                            <td align="right"><xsl:value-of select="fine_fee_ammount/normalized_sum"/>&#160;<xsl:value-of select="fine_fee_ammount/currency"/></td>
                                                            <td><xsl:value-of select="finecomment"/></td>
                                                        </tr>
                                                        </xsl:for-each>



                                                        <tr>
                                                            <td align="right"><strong>@@total@@:</strong></td>
                                                            <td align="right"><xsl:value-of select="notification_data/total_fines_amount"/>&#160;<xsl:value-of select="notification_data/fines_fees_list/user_fines_fees/fine_fee_ammount/currency"/></td>
                                                        </tr>

                                                </table>
                                            </table>
                                                    <br />
                                                        <tr>
                                                            <td>
                                                                <xsl:call-template name="circulationSignature"/> 
                                                            </td>
                                                        </tr>
                                        
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