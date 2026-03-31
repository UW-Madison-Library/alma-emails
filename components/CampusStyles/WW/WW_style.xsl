<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="generalStyle">
		<xsl:call-template name="libraryHeader" />
	</xsl:template>

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
                color: #222222;
                background-color: #ffffff;
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
            table td,
            table td * {
                line-height: 1.6;
                color: #222222;
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
                color: #222222;
                mso-line-height-rule: exactly;
            }
            h1 {
                font-size: 24px;
                line-height: 1.3;
            }
            h2 {
                font-size: 20px;
                line-height: 1.4;
            }
            strong, b {
                color: #222222;
            }
            a, .link {
                color: #4F2683!important;
                text-decoration: underline!important;
            }
            a:hover, .link:hover {
                text-decoration: none!important;
            }
            .darkmode {
                background-color: #ffffff;
                color: #222222;
            }
            .darkmode2 {
                background-color: #f6f4f8;
                color: #222222;
            }
            .darkmode, .darkmode *,
            .darkmode2, .darkmode2 *,
            .darkmode-heading, .darkmode-heading * {
                color: #222222!important;
            }
            .darkmode a, .darkmode2 a, .darkmode-heading a,
            .darkmode .link, .darkmode2 .link, .darkmode-heading .link {
                color: #4F2683!important;
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
                table td,
                table td *,
                ol li,
                ul li {
                    font-size: 18px!important;
                }
            }
        </style>
        <style>
            @media (prefers-color-scheme: dark) {
                body {
                    background-color: #111111!important;
                    color: #F4F4F4!important;
                }
                body, body *,
                table td,
                table td *,
                table th,
                table th *,
                ol li,
                ul li {
                    color: #F4F4F4!important;
                }
                .darkmode {
                    background-color: #1a1a1a!important;
                    background: #1a1a1a!important;
                    color: #F4F4F4!important;
                }
                .darkmode2 {
                    background-color: #111111!important;
                    background: #111111!important;
                    color: #F4F4F4!important;
                }
                .dark-border {
                    border: 1px solid #5b5b5b!important;
                }
                .darkmode-heading{
                    background-color: #232323!important;
                    background: #232323!important;
                    border: 1px solid #5b5b5b!important;
                }
                .listing th {
                    background-color: #232323!important;
                    color: #F4F4F4!important;
                    border-bottom: 1px solid #5b5b5b!important;
                }
                .listing td {
                    background-color: #1a1a1a!important;
                    border-bottom: 1px solid #5b5b5b!important;
                }
                .listing tr:hover td {
                    background-color: #2a2a2a!important;
                }
                .darkmode a, .darkmode2 a, .darkmode-heading a,
                .darkmode .link, .darkmode2 .link, .darkmode-heading .link {
                    color: #d7c3f1!important;
                }
                a, .link {
                    color: #d7c3f1!important;
                }
                img {
                    color: inherit!important;
                }
                .footer p, .footer strong, .footer b {
                    color: #E6E6E6!important;
                }
                .footer .link, .footer a {
                    color: #ffffff!important;
                }
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


<!-- removed head tag, so it can be dropped in to current letters -->
    <xsl:template name="libraryHeader">
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
        <tr>
            <td align="left" valign="middle" style="background-color:#4F2683; padding: 16px 20px;">
                <a href="https://www.uww.edu/library/" style="color: #4F2683;" target="_blank">
                    <img src="cid:logo.jpg" alt="UW-Whitewater Logo" width="auto" height="32"/>
                </a>
            </td>
        </tr>
    </xsl:template>
     
    <xsl:template name="systemHeader">
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
                    color: #4F2683!important;
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
                    a, .link { color: #C9B6E4!important; }
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

    <xsl:template name="oldgeneralStyle">
        <style>
            body {background-color:#fff; color:#222222}
            .listing td {border-bottom: 1px solid #eee}
            .listing tr:hover td {background-color:#eee}
            .listing th {background-color:#f5f5f5}
            h4 {line-height: 0.2em}
        </style>
    </xsl:template>
    <xsl:template name="bodyStyleCss">font-family: Arial, Helvetica, sans-serif; color:#222222; background-color:#ffffff; margin:0; padding:0; font-size:100%; line-height:1.6</xsl:template>
    <xsl:template name="listStyleCss">list-style: none; margin:0 0 0 1em; padding:0</xsl:template>
    <xsl:template name="mainTableStyleCss">width:100%; text-align:left</xsl:template>
    <xsl:template name="headerLogoStyleCss">background-color:#4F2683; width:100%;</xsl:template>
    <xsl:template name="headerTableStyleCss">background-color:#eee8f6; width:100%; height:30px; text-shadow:1px 1px 1px #fff;</xsl:template>
    <xsl:template name="footerTableStyleCss">background-color:#4F2683; width:100%; text-shadow:1px 1px 1px #333; color:#fff; margin-top:1em; font-weight:700; line-height:2em; font-size:150%;</xsl:template>
</xsl:stylesheet>
