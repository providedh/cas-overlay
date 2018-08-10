<%--

    Licensed to Apereo under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Apereo licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>

<%-- Login exception page: account not confirmed --%>

<jsp:directive.include file="includes/top.jsp"/>

<div id="msg" class="errors">
    <h2><spring:message code="screen.loginnotallowed.heading"/></h2>
    <p><spring:message code="screen.loginnotallowed.message"/></p>
    <hr/><br/>
    <section class="row">
        <spring:eval var="osfResendConfirmationUrl" expression="@casProperties.getProperty('osf.resendConfirmation.url')"/>
        <a id="alt-login-inst" class="btn-alt-login" href="${osfResendConfirmationUrl}">
            <img class="osf-alt-logo" src="../images/providedh-logo.svg">
            <span class="label-login"><spring:message code="screen.loginnotallowed.button.resendConfirmation"/></span>
        </a>
    </section>
</div>

<spring:message code="screen.osf.login.message.error" var="errorDescription"/>
<script>
    description = document.getElementById("description");
    if (description != null) {
        description.innerHTML = "<br><br>${errorDescription}";
    }
</script>

<c:set var="linkSignIn" value="true"/>
<c:set var="linkSignOut" value="false"/>
<c:set var="linkCreateAccount" value="true"/>
<c:set var="linkBackToOsf" value="true"/>

<jsp:directive.include file="includes/bottom.jsp"/>
