package ch.qos.logback.core.joran.action;

import ch.qos.logback.core.joran.spi.ElementPath;
import ch.qos.logback.core.joran.spi.InterpretationContext;
import ch.qos.logback.core.joran.spi.NoAutoStartUtil;
import ch.qos.logback.core.joran.util.PropertySetter;
import ch.qos.logback.core.spi.ContextAware;
import ch.qos.logback.core.spi.LifeCycle;
import ch.qos.logback.core.util.AggregationType;
import ch.qos.logback.core.util.Loader;
import ch.qos.logback.core.util.OptionHelper;
import java.util.Stack;
import org.xml.sax.Attributes;
/* loaded from: classes.dex */
public class NestedComplexPropertyIA extends ImplicitAction {
    Stack<IADataForComplexProperty> actionDataStack = new Stack<>();

    @Override // ch.qos.logback.core.joran.action.Action
    public void begin(InterpretationContext interpretationContext, String str, Attributes attributes) {
        IADataForComplexProperty peek = this.actionDataStack.peek();
        String subst = interpretationContext.subst(attributes.getValue(Action.CLASS_ATTRIBUTE));
        try {
            Class<?> loadClass = !OptionHelper.isEmpty(subst) ? Loader.loadClass(subst, this.context) : peek.parentBean.getClassNameViaImplicitRules(peek.getComplexPropertyName(), peek.getAggregationType(), interpretationContext.getDefaultNestedComponentRegistry());
            if (loadClass == null) {
                peek.inError = true;
                addError("Could not find an appropriate class for property [" + str + "]");
                return;
            }
            if (OptionHelper.isEmpty(subst)) {
                addInfo("Assuming default type [" + loadClass.getName() + "] for [" + str + "] property");
            }
            peek.setNestedComplexProperty(loadClass.newInstance());
            if (peek.getNestedComplexProperty() instanceof ContextAware) {
                ((ContextAware) peek.getNestedComplexProperty()).setContext(this.context);
            }
            interpretationContext.pushObject(peek.getNestedComplexProperty());
        } catch (Exception e) {
            peek.inError = true;
            addError("Could not create component [" + str + "] of type [" + subst + "]", e);
        }
    }

    @Override // ch.qos.logback.core.joran.action.Action
    public void end(InterpretationContext interpretationContext, String str) {
        IADataForComplexProperty pop = this.actionDataStack.pop();
        if (pop.inError) {
            return;
        }
        PropertySetter propertySetter = new PropertySetter(pop.getNestedComplexProperty());
        propertySetter.setContext(this.context);
        if (propertySetter.computeAggregationType("parent") == AggregationType.AS_COMPLEX_PROPERTY) {
            propertySetter.setComplexProperty("parent", pop.parentBean.getObj());
        }
        Object nestedComplexProperty = pop.getNestedComplexProperty();
        if ((nestedComplexProperty instanceof LifeCycle) && NoAutoStartUtil.notMarkedWithNoAutoStart(nestedComplexProperty)) {
            ((LifeCycle) nestedComplexProperty).start();
        }
        if (interpretationContext.peekObject() != pop.getNestedComplexProperty()) {
            addError("The object on the top the of the stack is not the component pushed earlier.");
            return;
        }
        interpretationContext.popObject();
        switch (pop.aggregationType) {
            case AS_COMPLEX_PROPERTY_COLLECTION:
                pop.parentBean.addComplexProperty(str, pop.getNestedComplexProperty());
                return;
            case AS_COMPLEX_PROPERTY:
                pop.parentBean.setComplexProperty(str, pop.getNestedComplexProperty());
                return;
            default:
                return;
        }
    }

    @Override // ch.qos.logback.core.joran.action.ImplicitAction
    public boolean isApplicable(ElementPath elementPath, Attributes attributes, InterpretationContext interpretationContext) {
        String peekLast = elementPath.peekLast();
        if (interpretationContext.isEmpty()) {
            return false;
        }
        PropertySetter propertySetter = new PropertySetter(interpretationContext.peekObject());
        propertySetter.setContext(this.context);
        AggregationType computeAggregationType = propertySetter.computeAggregationType(peekLast);
        switch (computeAggregationType) {
            case NOT_FOUND:
            case AS_BASIC_PROPERTY:
            case AS_BASIC_PROPERTY_COLLECTION:
                return false;
            case AS_COMPLEX_PROPERTY_COLLECTION:
            case AS_COMPLEX_PROPERTY:
                this.actionDataStack.push(new IADataForComplexProperty(propertySetter, computeAggregationType, peekLast));
                return true;
            default:
                addError("PropertySetter.computeAggregationType returned " + computeAggregationType);
                return false;
        }
    }
}
