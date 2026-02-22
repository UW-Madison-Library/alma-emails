<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:include href="header.xsl" />
  <xsl:include href="senderReceiver.xsl" />
  <xsl:include href="mailReason.xsl" />
  <xsl:include href="footer.xsl" />
  <xsl:include href="style.xsl" />
  <xsl:include href="recordTitle.xsl" />

  <xsl:template match="/">
    <html>
			<xsl:if test="notification_data/languages/string">
				<xsl:attribute name="lang">
					<xsl:value-of select="notification_data/languages/string"/>
				</xsl:attribute>
			</xsl:if>

      <head>
				<title>
					<xsl:value-of select="notification_data/general_data/subject"/>
				</title>

        <xsl:call-template name="generalStyle" />
      </head>
      <body>
        <xsl:attribute name="style">
          <xsl:call-template name="bodyStyleCss" /><!-- style.xsl -->
        </xsl:attribute>

        <xsl:call-template name="head" /><!-- header.xsl -->

		<br/>
		<xsl:call-template name="toWhomIsConcerned" /> <!-- mailReason.xsl -->

		&#160;
        <div class="messageArea">
          <div class="messageBody">
			<table role='presentation'  cellspacing="0" cellpadding="1" border="0">
              <tr>
              	<td>
            		@@the_item@@ <strong><em><xsl:value-of select="notification_data/phys_item_display/title"/></em></strong>
					@@picked_up_by@@ <xsl:value-of select="notification_data/borrower/name"/>
                </td>
              </tr>
			<tr><td>@@request_complete@@</td></tr>
			&#160;

			<table role='presentation' >
				<br/>
				<tr><td>@@sincerely@@</td></tr>
				<tr><td>@@department@@</td></tr>
			</table>
			</table>
          </div>
        </div>

        <!-- footer.xsl -->
        <xsl:call-template name="lastFooter" />
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
