<!-- $Id$ -->

	<xsl:template name="about">
		<xsl:apply-templates select="about_data"/>
	</xsl:template>

	<xsl:template match="about_data">
		<table cellpadding="2" cellspacing="2" align="center" class="about">
			<xsl:variable name="phpgw_logo"><xsl:value-of select="phpgw_logo"/></xsl:variable>
			<xsl:variable name="lang_url_statustext"><xsl:value-of select="lang_url_statustext"/></xsl:variable>
			<tr>
				<td colspan="2">
					<a href="http://www.phpgroupware.org" target="_blank" onMouseover="window.status='{$lang_url_statustext}'; return true;" onMouseout="window.status=''; return true;">
						<img src="{$phpgw_logo}/logo.png" border="0" alt="{$lang_url_statustext}"/>
					</a>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="http://www.phpgroupware.org" target="_blank" onMouseover="window.status='{$lang_url_statustext}'; return true;" onMouseout="window.status=''; return true;">
						<xsl:text>phpGroupWare </xsl:text>
					</a>
					<xsl:value-of select="phpgw_descr"/>
				</td>
			</tr>
			<tr>
				<td>
					<xsl:value-of select="lang_version"/>
				</td>
				<td>
					<xsl:value-of select="phpgw_version"/>
				</td>
			</tr>
			<tr>
				<td height="15"> </td>
			</tr>
			<xsl:apply-templates select="about_app"/>
		</table>
	</xsl:template>

	<xsl:template match="about_app">
		<tr>
			<td colspan="2" class="th_text">
				<xsl:value-of select="app_title"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<xsl:value-of disable-output-escaping="yes" select="app_descr"/>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<xsl:value-of select="lang_written_by"/>
			</td>
			<td>
				<xsl:value-of select="developers"/>
			</td>
		</tr>
		<tr valign="top">
			<td>
				<xsl:value-of select="lang_maintainer"/>
			</td>
			<td>
				<xsl:value-of select="app_maintainer"/><br/>
				<xsl:value-of disable-output-escaping="yes" select="app_maintainer_email"/>
			</td>
		</tr>
		<tr>
			<td>
				<xsl:value-of select="lang_version"/>
			</td>
			<td>
				<xsl:value-of select="app_version"/>
			</td>
		</tr>
		<tr>
			<td>
				<xsl:value-of select="lang_license"/>
			</td>
			<td>
				<xsl:value-of select="app_license"/>
			</td>
		</tr>
		<xsl:choose>
			<xsl:when test="app_source">
				<tr>
					<td valign="top"><xsl:value-of select="lang_based_on"/></td>
					<td><xsl:value-of select="app_source"/></td>
				</tr>
			</xsl:when>
		</xsl:choose>
		<xsl:choose>
			<xsl:when test="app_source_url">
				<tr>
					<td height="5"></td>
					<td>
						<a target="_blank">
							<xsl:attribute name="href">
								<xsl:value-of select="app_source_url"/>
							</xsl:attribute>
							<xsl:value-of select="app_source_url_name"/>
						</a>
					</td>
				</tr>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
