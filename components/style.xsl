<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="https://www.w3.org/1999/XSL/Transform">
    <xsl:template name="libraryStyle">
        <style type="text/css">
            :root {
                color-scheme: light dark;
                supported-color-schemes: light dark;
            }
            body {
                margin: 0;
                padding: 0;
                font-family: Helvetica, Arial, sans-serif;
                font-size: 16px;
                line-height: 1.6;
                word-spacing: normal;
                height: 100%!important;
                width: 100%!important;
                -webkit-text-size-adjust: 100%;
                -ms-text-size-adjust: 100%;
            }
            table {
                border-collapse: collapse;
                mso-table-lspace: 0pt;
                mso-table-rspace: 0pt;
                width: 100%!important;
                max-width: 100%!important;
            }
            table, td {
                -webkit-text-size-adjust: 100%;
                -ms-text-size-adjust: 100%;
            }
            tr td, tr td h1, tr td h2, tr td p, tr td span {
                font-size: 16px;
                line-height: 1.6;
            }
            img {
                border: 0;
                line-height: 100%;
                outline: none;
                text-decoration: none;
                display: block;
                mso-line-height-rule: exactly;
            }
            p, h1, h2 {
                padding: 0;
                margin: 0;
            }
            p {
                mso-line-height-rule: exactly;
                font-size: 16px!important;
                line-height: 1.6!important;
            }
            ul li, ol li {
                font-size: 16px!important;
                line-height: 28px!important;
                mso-line-height-rule: exactly;
            }
            h1, h2 {
                font-family: Helvetica, Arial, sans-serif;
                font-size: 16px;
                line-height: 32px;
                mso-line-height-rule: exactly;
            }
            a, .link {
                color: #0073CE!important;
                text-decoration: underline!important;
            }
            .dark a {
                color: #ffffff!important;
            }
            a:hover, .link:hover {
                text-decoration: none!important;
            }
            .footer p {
                font-size: 16px!important;
                line-height: 24px;
                color: #4B525D;
                mso-line-height-rule: exactly;
            }
            .footer a {
                color: #4B525D!important;
            }
            #root [x-apple-data-detectors=true], a[x-apple-data-detectors=true] {
                color: inherit!important;
                text-decoration: inherit!important;
            }
            [x-apple-data-detectors-type="calendar-event"] {
                color: inherit!important;
                -webkit-text-decoration-color: inherit!important;
                text-decoration-color: inherit!important;
            }

            .ExternalClass {
                width: 100%;
            }
            
            .content-wrapper {
                width: 100%!important;
                max-width: 600px!important;
                margin: 0 auto; 
                padding: 0 10px;
                box-sizing: border-box;
            }
        </style>
        <style>
            @media screen and (max-width: 400px) {
                .small-padding {
                    padding-top: 0px!important;
                }
                tr td, tr td h1, tr td h2, tr td p, tr td span, ol li, ul li{
                    font-size: 18px!important;
                }
            }
        </style>
        <style>
            @media (prefers-color-scheme: dark) {
                .dark-img {
                    display: block!important;
                }
                .light-img {
                    display: none!important;
                }
                .darkmode {
                    background-color: #262524!important; background: #262524!important;
                }
                .darkmode2 {
                    background-color: #0e0e0e!important; background: #0e0e0e!important;
                }
                .dark-border {
                    border: 1px solid #333333!important;
                }
                h1, h2, h3, p, span, h1 a, h2 a, .header a, img, strong {
                    color: #EDEEEF!important;
                }
                .darkmode tr td, .darkmode tr td h1, .darkmode tr td h2, .darkmode tr td p, .darkmode tr td span {
                    color: #EDEEEF!important;
                }
                .darkmode-heading{
                    background-color: #464646!important; background: #464646!important;
                    border: none!important;
                }
                a, .link { color: #7EABCE!important; }
                .footer .link, .footer a { color: #fdfdfd!important; }
            }
        </style>
        <!--[if (gte mso 9)|(IE)]>
        <style>
            li {
                margin-left: 27px!important;
                mso-special-format: bullet;
            }
            .forDumbOutlooks {
                margin-left: -25px!important;
            }
        </style>
        <![endif]-->
    </xsl:template>



    <xsl:template name="libraryHeader">
        <xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
            <meta name="x-apple-disable-message-reformatting" />
            <meta name="color-scheme" content="light dark" />
            <meta name="supported-color-schemes" content="light dark" />
            <!--[if gte mso 9]>
            <xml>
            <o:OfficeDocumentSettings>
                <o:AllowPNG/>
                <o:PixelsPerInch>96</o:PixelsPerInch>
            </o:OfficeDocumentSettings>
            </xml>
            <![endif]-->
            <title>
                <xsl:value-of select="notification_data/general_data/subject"/>
            </title>
            <xsl:call-template name="libraryStyle" />
        </head>
    </xsl:template>

    <xsl:template name="libraryRecordTitle">
        <table width="100%" cellspacing="0" cellpadding="5" class="darkmode-heading" 
            style="border-collapse: collapse; border: 1px solid #eeeeee; background-color: #fcfcfc; border-radius: 8px!important; margin-bottom: 15px;" role="presentation">
            
            <xsl:if test="string-length(notification_data/phys_item_display/title) > 0">
                <tr>
                    <td style="vertical-align: top; padding: 15px 25px;">
                        <b>Title:</b><br/>
                        <xsl:value-of select="notification_data/phys_item_display/title"/><br/>
                    </td>
                </tr>
            </xsl:if>


            <xsl:if test="notification_data/phys_item_display/author !=''">
                <tr>
                    <td style="vertical-align: top; padding: 15px 25px;">
                        <b>Author:</b><br/>
                        <xsl:value-of select="notification_data/phys_item_display/author"/><br/>
                    </td>
                </tr>
            </xsl:if>

            <xsl:if test="notification_data/phys_item_display/issue_level_description !=''">
                <tr>
                    <td style="vertical-align: top; padding: 15px 25px;">
                        <b>Description:</b><br/>
                        <xsl:value-of select="notification_data/phys_item_display/issue_level_description"/><br/>
                    </td>
                </tr>
            </xsl:if>

        </table>

    </xsl:template>

   <xsl:template name="libraryLogo">
        <tr style="display: none;" aria-hidden="true">
            <td>
                <a href="https://www.wisconsin.edu" style="color: #005777;" target="_blank">
                    <img src="cid:logo.jpg" alt="Universities of Wisconsiny of Wisconsin Logo" width="auto" height="20"/>
                </a>
            </td>
        </tr>
        <tr>
            <td class="darkmode" align="center" valign="top" style="background-color: #333333; background: linear-gradient(#333333,#333333);">
                <table border="0" cellpadding="0" cellspacing="0" role="presentation">
                    <tr>
                        <td align="center" valign="top" style="padding: 20px 0;">
                            <a href="https://www.wisconsin.edu/" style="color: #005777;" target="_blank">
                                <img src="https://www.wisconsin.edu/brand-style-guide/wp-content/uploads/sites/300/2023/10/UW-logo-color-e1725889687941-1024x273.png" width="200" height="134" alt="University of Wisconsin-Madison Libraries" style="border: 0;"/>
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </xsl:template>

    <xsl:template name="librarySalutation">
        <table cellspacing="0" cellpadding="0" border="0" role="presentation">
            <tr>
                <td style="padding-bottom: 20px;">
                    <xsl:for-each select="notification_data">
                        <xsl:choose>
                            <xsl:when test="receivers/receiver/user/preferred_first_name !=''">
                                Dear <xsl:value-of select="receivers/receiver/user/preferred_first_name"/>&#160;<xsl:value-of select="receivers/receiver/user/preferred_last_name"/>,
                            </xsl:when>
                            <xsl:otherwise>
                                Dear <xsl:value-of select="receivers/receiver/user/first_name"/>&#160;<xsl:value-of select="receivers/receiver/user/last_name"/>,
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </td>
            </tr>
        </table>
    </xsl:template>

    <xsl:template name="libraryAdminSalutation">
        <table cellspacing="0" cellpadding="0" border="0" role="presentation">
            <tr>
                <td style="padding-bottom: 20px;">
                    Dear Library System Administrator,
                </td>
            </tr>
        </table>
    </xsl:template>

    <xsl:template name="circulationSignature">
        <table cellspacing="0" cellpadding="0" border="0" role="presentation">
            <tr>
                <td style="padding-bottom: 40px; width: 500px; padding-top: 30px;">
                    <p style="padding: 0px 0;">Sincerely,</p>
                    <p style="margin: 5px 0px 10px 0; padding-bottom: 10px; border-bottom: 2px solid #e5e5e5;">UW Libraries Circulation Support</p>
                    <p style="padding-bottom: 5px;">For assistance, please either:</p>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
                        <tr>
                            <td style="padding-bottom: 10px; font-size: 16px;">
                                Fill out our <a href="https://www.library.wisc.edu/borrow-request/circulation-assistance/" target="_blank" style="color: #0073CE; text-decoration: underline;">Circulation Assistance Form</a><br/>
                                Email us at <a href="mailto:circulation@library.wisc.edu" target="_blank" style="color: #0073CE; text-decoration: underline;">circulation@library.wisc.edu</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </xsl:template>

    <xsl:template name="ILLSignature">
        <table cellspacing="0" cellpadding="0" border="0" role="presentation">
            <tr>
                <td style="padding-bottom: 40px; width: 500px; padding-top: 30px;">
                    <p style="padding: 0px 0;">Sincerely,</p>
                    <p style="fmargin: 5px 0px 10px 0; padding-bottom: 10px; border-bottom: 2px solid #e5e5e5;">UW-Madison Libraries Interlibrary Loan (ILL)</p>
                    <p style="padding-bottom: 5px;">For assistance, please either:</p>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
                       <tr>
                            <td style="padding-bottom: 10px;">
                                Fill out our <a href="https://www.library.wisc.edu/borrow-request/interlibrary-loan/contact-us/" target="_blank" style="color: #0073CE; text-decoration: underline;">ILL Assistance Form</a><br/>
                                Email us at <a href="mailto:gzmill@library.wisc.edu" target="_blank" style="color: #0073CE; text-decoration: underline;">gzmill@library.wisc.edu</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </xsl:template>

    <xsl:template name="AcquisitionsSignature">
        <table cellspacing="0" cellpadding="0" border="0" role="presentation">
            <tr>
                <td style="padding-bottom: 40px; width: 500px; padding-top: 30px;">
                    <p style="padding: 0px 0;">Sincerely,</p>
                    <p style="fmargin: 5px 0px 10px 0; padding-bottom: 10px; border-bottom: 2px solid #e5e5e5;">UW-Madison Libraries Acquisitions Department</p>
                    <p style="padding-bottom: 5px;">For assistance, please:</p>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
                       <tr>
                            <td style="padding-bottom: 10px;">
                                Email us at <a href="mailto:ctsorders@library.wisc.edu" target="_blank" style="color: #0073CE; text-decoration: underline;">ctsorders@library.wisc.edu</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </xsl:template>

    <xsl:template name="AdminSignature">
        <table cellspacing="0" cellpadding="0" border="0" role="presentation">
            <tr>
                <td style="padding-bottom: 40px; width: 500px; padding-top: 30px;">
                    <p style="padding: 0px 0;">Sincerely,</p>
                    <p style="fmargin: 5px 0px 10px 0; padding-bottom: 10px; border-bottom: 2px solid #e5e5e5;">Alma System Administration Team</p>
                    <p style="padding-bottom: 5px;">For assistance, please either:</p>
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" role="presentation">
                       <tr>
                            <td style="padding-bottom: 10px;">
                                Fill out our <a href="https://www.library.wisc.edu/help/technical-assistance/" target="_blank" style="color: #0073CE; text-decoration: underline;">Technical Assistance Form</a><br/>
                                Email us at <a href="mailto:ltghelpdesk@library.wisc.edu" target="_blank" style="color: #0073CE; text-decoration: underline;">ltghelpdesk@library.wisc.edu</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </xsl:template>
        
    <xsl:template name="libraryFooter">
        <table role="presentation" class="wMobile" cellpadding="0" cellspacing="0" border="0" style="max-width: 600px!important;">
            <tr>
                <td class="footer" align="center" valign="top" style="padding:20px 0;">
                    <p style="text-align: left; padding-left: 10px; margin: 0; font-size:14px!important;">&#169; Board of Regents of the University of Wisconsin System</p>
                </td>
            </tr>
        </table>
    </xsl:template>

    <xsl:template name="systemHeader">
        <xsl:output method="html" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
            <meta name="x-apple-disable-message-reformatting" />
            <meta name="color-scheme" content="light dark" />
            <meta name="supported-color-schemes" content="light dark" />
            <!--[if gte mso 9]>
            <xml>
            <o:OfficeDocumentSettings>
                <o:AllowPNG/>
                <o:PixelsPerInch>96</o:PixelsPerInch>
            </o:OfficeDocumentSettings>
            </xml>
            <![endif]-->
            <title>
                <xsl:value-of select="notification_data/general_data/subject"/>
            </title>
			<style>
                body {
                    background-color:#fff;
                    font-family: Arial, sans-serif; 
                    color:#333; 
                    margin:0; 
                    padding:0; 
                    font-size: 16px;
                }
                .listing td {
                    border-bottom: 1px solid #eee;
                }
                .listing tr:hover td {
                    background-color:#eee;
                }
                .listing th {
                    background-color:#f5f5f5;
                }
                h4 {
                    line-height: 3.2px;
                }
                .barcode { 
                    font-family:"Barcode 3 of 9", "3 of 9 Barcode", "Libre Barcode 39"; 
                    font-size: 38px; 
                    padding-left: 32px;
                }
                .messageBody {
                    width: 50% ;
                }
                a, .link {
                    color: #0073CE!important;
                    text-decoration: underline!important;
                }
                .dark a {
                    color: #ffffff!important;
                }
                #root [x-apple-data-detectors=true], a[x-apple-data-detectors=true] {
                    color: inherit!important;
                    text-decoration: inherit!important;
                }
                [x-apple-data-detectors-type="calendar-event"] {
                    color: inherit!important;
                    -webkit-text-decoration-color: inherit!important;
                    text-decoration-color: inherit!important;
                }
                .ExternalClass {
                    width: 100%;
                }
			</style>
            <style>
                @media (prefers-color-scheme: dark) {
                    .dark-img {
                        display: block!important;
                    }
                    .light-img {
                        display: none!important;
                    }
                    .darkmode {
                        background-color: #262524!important; background: #262524!important;
                    }
                    .darkmode2 {
                        background-color: #0e0e0e!important; background: #0e0e0e!important;
                    }
                    .dark-border {
                        border: 1px solid #333333!important;
                    }
                    h1, h2, h3, p, span, h1 a, h2 a, .header a, img, strong {
                        color: #EDEEEF!important;
                    }
                    .darkmode tr td, .darkmode tr td h1, .darkmode tr td h2, .darkmode tr td p, .darkmode tr td span {
                        color: #EDEEEF!important;
                    }
                    .darkmode-heading{
                        background-color: #464646!important; background: #464646!important;
                        border: none!important;
                    }
                    a, .link { color: #7EABCE!important; }
                    .footer .link, .footer a { color: #fdfdfd!important; }
                }
            </style>
            <!--[if (gte mso 9)|(IE)]>
            <style>
                li {
                    margin-left: 27px!important;
                    mso-special-format: bullet;
                }
                .forDumbOutlooks {
                    margin-left: -25px!important;
                }
            </style>
            <![endif]-->
        </head>
    </xsl:template>

    <xsl:template name="generalStyle">
        <style>
            body {background-color:#fff}
            .listing td {border-bottom: 1px solid #eee}
            .listing tr:hover td {background-color:#eee}
            .listing th {background-color:#f5f5f5}
            h4 {line-height: 0.2em}
        </style>
    </xsl:template>
    <xsl:template name="bodyStyleCss">font-family: arial; color:#333; margin:0; padding:0em; font-size:80%</xsl:template>
    <xsl:template name="listStyleCss">list-style: none; margin:0 0 0 1em; padding:0</xsl:template>
    <xsl:template name="mainTableStyleCss">width:100%; text-align:left</xsl:template>
    <xsl:template name="headerLogoStyleCss">background-color:#ffffff; width:100%;</xsl:template>
    <xsl:template name="headerTableStyleCss">background-color:#e9e9e9; width:100%; height:30px; text-shadow:1px 1px 1px #fff;</xsl:template>
    <xsl:template name="footerTableStyleCss">background-color:#444; width:100%; text-shadow:1px 1px 1px #333; color:#fff; margin-top:1em; font-weight:700; line-height:2em; font-size:150%;</xsl:template>
</xsl:stylesheet>
