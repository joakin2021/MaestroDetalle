<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1">
    <af:messages id="m1"/>
    <af:form id="f1">
  
    <af:panelBox text="PanelBox1" id="pb1">
      <f:facet name="toolbar">
          <af:panelFormLayout id="pfl1">xg
            <af:inputText value="#{bindings.DepartmentId.inputValue}"
                          label="#{bindings.DepartmentId.hints.label}"
                          required="#{bindings.DepartmentId.hints.mandatory}"
                          columns="#{bindings.DepartmentId.hints.displayWidth}"
                          maximumLength="#{bindings.DepartmentId.hints.precision}"
                          shortDesc="#{bindings.DepartmentId.hints.tooltip}"
                          id="it1">
              <f:validator binding="#{bindings.DepartmentId.validator}"/>
              <af:convertNumber groupingUsed="false"
                                pattern="#{bindings.DepartmentId.format}"/>
            </af:inputText>
            <af:inputText value="#{bindings.DepartmentName.inputValue}"
                          label="#{bindings.DepartmentName.hints.label}"
                          required="#{bindings.DepartmentName.hints.mandatory}"
                          columns="#{bindings.DepartmentName.hints.displayWidth}"
                          maximumLength="#{bindings.DepartmentName.hints.precision}"
                          shortDesc="#{bindings.DepartmentName.hints.tooltip}"
                          id="it3">
              <f:validator binding="#{bindings.DepartmentName.validator}"/>
            </af:inputText>
            <af:inputText value="#{bindings.ManagerId.inputValue}"
                          label="#{bindings.ManagerId.hints.label}"
                          required="#{bindings.ManagerId.hints.mandatory}"
                          columns="#{bindings.ManagerId.hints.displayWidth}"
                          maximumLength="#{bindings.ManagerId.hints.precision}"
                          shortDesc="#{bindings.ManagerId.hints.tooltip}"
                          id="it2">
              <f:validator binding="#{bindings.ManagerId.validator}"/>
              <af:convertNumber groupingUsed="false"
                                pattern="#{bindings.ManagerId.format}"/>
            </af:inputText>
            <af:inputText value="#{bindings.LocationId.inputValue}"
                          label="#{bindings.LocationId.hints.label}"
                          required="#{bindings.LocationId.hints.mandatory}"
                          columns="#{bindings.LocationId.hints.displayWidth}"
                          maximumLength="#{bindings.LocationId.hints.precision}"
                          shortDesc="#{bindings.LocationId.hints.tooltip}"
                          id="it4">
              <f:validator binding="#{bindings.LocationId.validator}"/>
              <af:convertNumber groupingUsed="false"
                                pattern="#{bindings.LocationId.format}"/>
            </af:inputText>
            <f:facet name="footer">
              <af:panelGroupLayout layout="horizontal" id="pgl1">
                <af:commandButton actionListener="#{bindings.First.execute}"
                                  text="First"
                                  disabled="#{!bindings.First.enabled}"
                                  partialSubmit="true" id="cb4"/>
                <af:commandButton actionListener="#{bindings.Previous.execute}"
                                  text="Previous"
                                  disabled="#{!bindings.Previous.enabled}"
                                  partialSubmit="true" id="cb1"/>
                <af:commandButton actionListener="#{bindings.Next.execute}"
                                  text="Next"
                                  disabled="#{!bindings.Next.enabled}"
                                  partialSubmit="true" id="cb2"/>
                <af:commandButton actionListener="#{bindings.Last.execute}"
                                  text="Last"
                                  disabled="#{!bindings.Last.enabled}"
                                  partialSubmit="true" id="cb3"/>
              </af:panelGroupLayout>
            </f:facet>
          </af:panelFormLayout>
        </f:facet>
      
      </af:panelBox>
    
      </af:form>
  </af:document>
</f:view>