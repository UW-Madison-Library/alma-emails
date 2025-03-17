<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="header.xsl" />
<xsl:include href="senderReceiver.xsl" />
<xsl:include href="mailReason.xsl" />
<xsl:include href="footer.xsl" />
<xsl:include href="style.xsl" />

<xsl:template match="/">
	<html>
		<head>
		<xsl:call-template name="generalStyle" />
		</head>

			<body>
			<xsl:attribute name="style">
				<xsl:call-template name="bodyStyleCss" /> <!-- style.xsl -->
			</xsl:attribute>

				<xsl:call-template name="head" /> <!-- header.xsl -->
				<xsl:call-template name="senderReceiver" /> <!-- SenderReceiver.xsl -->

				<br />
				<xsl:call-template name="toWhomIsConcerned" /> <!-- mailReason.xsl -->
					@@You_were_specify@@
                                <br />
		               <br />

				<table cellspacing="0" cellpadding="5" border="0">


				<tr>
					<td>
				<br />
				@@title@@ 

						<br />

					</td>
						<td>
				<br />
				<xsl:value-of  select="notification_data/title"/>

						<br />

					</td>
					</tr>
					<tr>
					<td>
				<br />
				@@callNumber@@

						<br />

					</td>
						<td>
				<br />
				<xsl:value-of  select="notification_data/poline_inventory/call_number"/>

						<br />

					</td>
					</tr>

			<tr><td>Please search for this item in the library catalog: https://search.library.wisc.edu/ <br />
                    Use the View Online button in the upper right hand corner of the page to access the ebook. <br />
                 </td></tr>
 
                    <tr><td>    Please note that there may be a delay of up to 6 hours before the book will appear in the catalog.<br />
                    If you have any questions, please reply to this email. <br />
					

					</td>
					</tr>

				</table>
				<br />
				<table>
						<tr><td>@@sincerely@@</td></tr>
						<tr><td>@@department@@</td></tr>
				</table>

				<xsl:call-template name="lastFooter" /> <!-- footer.xsl -->
			</body>
	</html>
</xsl:template>

</xsl:stylesheet>