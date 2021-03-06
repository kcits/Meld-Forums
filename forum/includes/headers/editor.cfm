<!---
This file is part of the Meld Forums application.

Meld Forums is licensed under the GPL 2.0 license
Copyright (C) 2010 2011 Meld Solutions Inc. http://www.meldsolutions.com/

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation, version 2 of that license..

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

--->
<cfset var="#rc.$.getContentRenderer().loadJSLib()#">
<cfsilent>
<cfsavecontent variable="local.str"><cf_CacheOMatic key="meldforums_editorheader" nocache="#request.nocache#"><cfoutput>
<script type="text/javascript" src="#rc.MFBean.getPluginWebRoot()#/editor/markitup/jquery.markitup.js"></script>
<script type="text/javascript" src="#rc.MFBean.getPluginWebRoot()#/editor/markitup/sets/bbcode/set.js"></script>
<link rel="stylesheet" type="text/css" href="#rc.MFBean.getPluginWebRoot()#/editor/markitup/skins/markitup/style.css" />
<link rel="stylesheet" type="text/css" href="#rc.MFBean.getPluginWebRoot()#/editor/markitup/sets/bbcode/style.css" />
</cfoutput>
</cf_CacheOMatic>
</cfsavecontent>
<cfset arrayPrepend( rc.headLoader,local.str )>
</cfsilent>
