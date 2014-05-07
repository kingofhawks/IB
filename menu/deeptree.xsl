<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">

<xsl:template match="/">
	<xsl:apply-templates />
</xsl:template>

<xsl:template match="/Tree">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="TreeNode">
  <div class="clsItem" type="leaf">
    <xsl:choose>
      <xsl:when test="@NodeImgSrc">
        <img type="img"><xsl:attribute name="src"><xsl:value-of select="@NodeImgSrc" /></xsl:attribute></img></xsl:when>
      <xsl:otherwise>
        <span class="clsSpace" type="img"><span class="clsLeaf">.</span></span></xsl:otherwise>
    </xsl:choose><span class="clsLabel" type="label">
      <xsl:attribute name="id"><xsl:value-of select="@NodeId" /></xsl:attribute>
      <xsl:attribute name="title"><xsl:value-of select="@Title" /></xsl:attribute>
      <xsl:choose>
        <xsl:when test="@Href">
          <a>
            <xsl:choose>
                <xsl:when test="@Target">
                    <xsl:attribute name="target"><xsl:value-of select="@Target" /></xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="target">fraContent</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <!-- adding by ervin start -->
            <xsl:choose>
                <xsl:when test="@Help">
                    <xsl:attribute name="help"><xsl:value-of select="@Help" /></xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="help">false</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <!-- adding by ervin end -->
            <xsl:attribute name="tabindex">-1</xsl:attribute>
            <xsl:attribute name="href"><xsl:value-of select="@Href" /></xsl:attribute>
            <xsl:value-of select="@Title" />
          </a>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="@Title" />
        </xsl:otherwise>
      </xsl:choose>
    </span>
  </div>
</xsl:template>

<xsl:template match="TreeNode[* or @NodeXmlSrc]">
  <div class="clsItem" type="parent">
    <span class="clsSpace" type="img"><span class="clsCollapse">+</span></span><span class="clsLabel" type="label">
      <xsl:attribute name="xmlsrc"><xsl:value-of select="@NodeXmlSrc" /></xsl:attribute>
      <xsl:attribute name="id"><xsl:value-of select="@NodeId" /></xsl:attribute>
      <xsl:attribute name="title"><xsl:value-of select="@Title" /></xsl:attribute>
      <xsl:choose>
        <xsl:when test="@Href">
          <a>
            <xsl:choose>
                <xsl:when test="@Target">
                    <xsl:attribute name="target"><xsl:value-of select="@Target" /></xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="target">fraContent</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:attribute name="tabindex">-1</xsl:attribute>
            <xsl:attribute name="href"><xsl:value-of select="@Href" /></xsl:attribute>
            <xsl:value-of select="@Title" />
          </a>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="@Title" />
        </xsl:otherwise>
      </xsl:choose>
    </span>
    <div class="hide" type="container"><xsl:apply-templates /></div>
  </div>
</xsl:template>

<xsl:template match="@Target">
  <xsl:copy><xsl:value-of /></xsl:copy>
</xsl:template>

<xsl:template match="/TreeNode">
  <xsl:apply-templates/>
</xsl:template>
<xsl:template match="TreeNode/Tree">
  <xsl:apply-templates />
</xsl:template>

</xsl:stylesheet>
