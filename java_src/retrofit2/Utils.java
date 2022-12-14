package retrofit2;

import ch.qos.logback.classic.spi.CallerData;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import okhttp3.ResponseBody;
import okio.Buffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class Utils {
    static final Type[] EMPTY_TYPE_ARRAY = new Type[0];

    private Utils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> getRawType(Type type) {
        if (type == null) {
            throw new NullPointerException("type == null");
        }
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type rawType = parameterizedType.getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        } else if (type instanceof GenericArrayType) {
            Type componentType = ((GenericArrayType) type).getGenericComponentType();
            return Array.newInstance(getRawType(componentType), 0).getClass();
        } else if (type instanceof TypeVariable) {
            return Object.class;
        } else {
            if (type instanceof WildcardType) {
                return getRawType(((WildcardType) type).getUpperBounds()[0]);
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
        }
    }

    static boolean equals(Type a, Type b) {
        boolean z = true;
        if (a == b) {
            return true;
        }
        if (a instanceof Class) {
            return a.equals(b);
        }
        if (a instanceof ParameterizedType) {
            if (!(b instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType pa = (ParameterizedType) a;
            ParameterizedType pb = (ParameterizedType) b;
            if (!equal(pa.getOwnerType(), pb.getOwnerType()) || !pa.getRawType().equals(pb.getRawType()) || !Arrays.equals(pa.getActualTypeArguments(), pb.getActualTypeArguments())) {
                z = false;
            }
            return z;
        } else if (a instanceof GenericArrayType) {
            if (!(b instanceof GenericArrayType)) {
                return false;
            }
            GenericArrayType ga = (GenericArrayType) a;
            GenericArrayType gb = (GenericArrayType) b;
            return equals(ga.getGenericComponentType(), gb.getGenericComponentType());
        } else if (a instanceof WildcardType) {
            if (!(b instanceof WildcardType)) {
                return false;
            }
            WildcardType wa = (WildcardType) a;
            WildcardType wb = (WildcardType) b;
            if (!Arrays.equals(wa.getUpperBounds(), wb.getUpperBounds()) || !Arrays.equals(wa.getLowerBounds(), wb.getLowerBounds())) {
                z = false;
            }
            return z;
        } else if (!(a instanceof TypeVariable) || !(b instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable<?> va = (TypeVariable) a;
            TypeVariable<?> vb = (TypeVariable) b;
            if (va.getGenericDeclaration() != vb.getGenericDeclaration() || !va.getName().equals(vb.getName())) {
                z = false;
            }
            return z;
        }
    }

    static Type getGenericSupertype(Type context, Class<?> rawType, Class<?> toResolve) {
        if (toResolve != rawType) {
            if (toResolve.isInterface()) {
                Class<?>[] interfaces = rawType.getInterfaces();
                int length = interfaces.length;
                for (int i = 0; i < length; i++) {
                    if (interfaces[i] == toResolve) {
                        Type context2 = rawType.getGenericInterfaces()[i];
                        return context2;
                    } else if (toResolve.isAssignableFrom(interfaces[i])) {
                        Type context3 = getGenericSupertype(rawType.getGenericInterfaces()[i], interfaces[i], toResolve);
                        return context3;
                    }
                }
            }
            if (!rawType.isInterface()) {
                while (rawType != Object.class) {
                    Class<?> rawSupertype = rawType.getSuperclass();
                    if (rawSupertype == toResolve) {
                        Type context4 = rawType.getGenericSuperclass();
                        return context4;
                    } else if (toResolve.isAssignableFrom(rawSupertype)) {
                        Type context5 = getGenericSupertype(rawType.getGenericSuperclass(), rawSupertype, toResolve);
                        return context5;
                    } else {
                        rawType = rawSupertype;
                    }
                }
            }
            return toResolve;
        }
        return context;
    }

    private static int indexOf(Object[] array, Object toFind) {
        for (int i = 0; i < array.length; i++) {
            if (toFind.equals(array[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    private static boolean equal(Object a, Object b) {
        return a == b || (a != null && a.equals(b));
    }

    static int hashCodeOrZero(Object o) {
        if (o != null) {
            return o.hashCode();
        }
        return 0;
    }

    static String typeToString(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type getSupertype(Type context, Class<?> contextRawType, Class<?> supertype) {
        if (!supertype.isAssignableFrom(contextRawType)) {
            throw new IllegalArgumentException();
        }
        return resolve(context, contextRawType, getGenericSupertype(context, contextRawType, supertype));
    }

    static Type resolve(Type context, Class<?> contextRawType, Type toResolve) {
        Type upperBound;
        while (toResolve instanceof TypeVariable) {
            TypeVariable<?> typeVariable = (TypeVariable) toResolve;
            toResolve = resolveTypeVariable(context, contextRawType, typeVariable);
            if (toResolve == typeVariable) {
                return toResolve;
            }
        }
        if ((toResolve instanceof Class) && ((Class) toResolve).isArray()) {
            Class<?> original = (Class) toResolve;
            Type componentType = original.getComponentType();
            Type newComponentType = resolve(context, contextRawType, componentType);
            Class<?> original2 = original;
            if (componentType != newComponentType) {
                original2 = new GenericArrayTypeImpl(newComponentType);
            }
            return original2;
        } else if (toResolve instanceof GenericArrayType) {
            GenericArrayType original3 = (GenericArrayType) toResolve;
            Type componentType2 = original3.getGenericComponentType();
            Type newComponentType2 = resolve(context, contextRawType, componentType2);
            if (componentType2 != newComponentType2) {
                original3 = new GenericArrayTypeImpl(newComponentType2);
            }
            return original3;
        } else if (toResolve instanceof ParameterizedType) {
            ParameterizedType original4 = (ParameterizedType) toResolve;
            Type ownerType = original4.getOwnerType();
            Type newOwnerType = resolve(context, contextRawType, ownerType);
            boolean changed = newOwnerType != ownerType;
            Type[] args = original4.getActualTypeArguments();
            int length = args.length;
            for (int t = 0; t < length; t++) {
                Type resolvedTypeArgument = resolve(context, contextRawType, args[t]);
                if (resolvedTypeArgument != args[t]) {
                    if (!changed) {
                        args = (Type[]) args.clone();
                        changed = true;
                    }
                    args[t] = resolvedTypeArgument;
                }
            }
            if (changed) {
                original4 = new ParameterizedTypeImpl(newOwnerType, original4.getRawType(), args);
            }
            return original4;
        } else if (!(toResolve instanceof WildcardType)) {
            return toResolve;
        } else {
            WildcardType original5 = (WildcardType) toResolve;
            Type[] originalLowerBound = original5.getLowerBounds();
            Type[] originalUpperBound = original5.getUpperBounds();
            if (originalLowerBound.length == 1) {
                Type lowerBound = resolve(context, contextRawType, originalLowerBound[0]);
                if (lowerBound != originalLowerBound[0]) {
                    return new WildcardTypeImpl(new Type[]{Object.class}, new Type[]{lowerBound});
                }
            } else if (originalUpperBound.length == 1 && (upperBound = resolve(context, contextRawType, originalUpperBound[0])) != originalUpperBound[0]) {
                return new WildcardTypeImpl(new Type[]{upperBound}, EMPTY_TYPE_ARRAY);
            }
            return original5;
        }
    }

    private static Type resolveTypeVariable(Type context, Class<?> contextRawType, TypeVariable<?> unknown) {
        Class<?> declaredByRaw = declaringClassOf(unknown);
        if (declaredByRaw != null) {
            Type declaredBy = getGenericSupertype(context, contextRawType, declaredByRaw);
            if (declaredBy instanceof ParameterizedType) {
                int index = indexOf(declaredByRaw.getTypeParameters(), unknown);
                return ((ParameterizedType) declaredBy).getActualTypeArguments()[index];
            }
            return unknown;
        }
        return unknown;
    }

    private static Class<?> declaringClassOf(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    static void checkNotPrimitive(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T checkNotNull(T object, String message) {
        if (object == null) {
            throw new NullPointerException(message);
        }
        return object;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isAnnotationPresent(Annotation[] annotations, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotations) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ResponseBody buffer(ResponseBody body) throws IOException {
        Buffer buffer = new Buffer();
        body.source().readAll(buffer);
        return ResponseBody.create(body.contentType(), body.contentLength(), buffer);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void validateServiceInterface(Class<T> service) {
        if (!service.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        if (service.getInterfaces().length > 0) {
            throw new IllegalArgumentException("API interfaces must not extend other interfaces.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type getParameterUpperBound(int index, ParameterizedType type) {
        Type[] types = type.getActualTypeArguments();
        if (index < 0 || index >= types.length) {
            throw new IllegalArgumentException("Index " + index + " not in range [0," + types.length + ") for " + type);
        }
        Type paramType = types[index];
        if (paramType instanceof WildcardType) {
            return ((WildcardType) paramType).getUpperBounds()[0];
        }
        return paramType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasUnresolvableType(Type type) {
        Type[] actualTypeArguments;
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            for (Type typeArgument : parameterizedType.getActualTypeArguments()) {
                if (hasUnresolvableType(typeArgument)) {
                    return true;
                }
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            return hasUnresolvableType(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof TypeVariable) && !(type instanceof WildcardType)) {
                String className = type == null ? "null" : type.getClass().getName();
                throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + className);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type getCallResponseType(Type returnType) {
        if (!(returnType instanceof ParameterizedType)) {
            throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
        }
        return getParameterUpperBound(0, (ParameterizedType) returnType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class ParameterizedTypeImpl implements ParameterizedType {
        private final Type ownerType;
        private final Type rawType;
        private final Type[] typeArguments;

        public ParameterizedTypeImpl(Type ownerType, Type rawType, Type... typeArguments) {
            Type[] typeArr;
            boolean z = true;
            if (rawType instanceof Class) {
                if ((ownerType == null) != (((Class) rawType).getEnclosingClass() != null ? false : z)) {
                    throw new IllegalArgumentException();
                }
            }
            this.ownerType = ownerType;
            this.rawType = rawType;
            this.typeArguments = (Type[]) typeArguments.clone();
            for (Type typeArgument : this.typeArguments) {
                if (typeArgument == null) {
                    throw new NullPointerException();
                }
                Utils.checkNotPrimitive(typeArgument);
            }
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.typeArguments.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.rawType;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.ownerType;
        }

        public boolean equals(Object other) {
            return (other instanceof ParameterizedType) && Utils.equals(this, (ParameterizedType) other);
        }

        public int hashCode() {
            return (Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode()) ^ Utils.hashCodeOrZero(this.ownerType);
        }

        public String toString() {
            StringBuilder result = new StringBuilder((this.typeArguments.length + 1) * 30);
            result.append(Utils.typeToString(this.rawType));
            if (this.typeArguments.length == 0) {
                return result.toString();
            }
            result.append("<").append(Utils.typeToString(this.typeArguments[0]));
            for (int i = 1; i < this.typeArguments.length; i++) {
                result.append(", ").append(Utils.typeToString(this.typeArguments[i]));
            }
            return result.append(">").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class GenericArrayTypeImpl implements GenericArrayType {
        private final Type componentType;

        public GenericArrayTypeImpl(Type componentType) {
            this.componentType = componentType;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public boolean equals(Object o) {
            return (o instanceof GenericArrayType) && Utils.equals(this, (GenericArrayType) o);
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return Utils.typeToString(this.componentType) + "[]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class WildcardTypeImpl implements WildcardType {
        private final Type lowerBound;
        private final Type upperBound;

        public WildcardTypeImpl(Type[] upperBounds, Type[] lowerBounds) {
            if (lowerBounds.length > 1) {
                throw new IllegalArgumentException();
            }
            if (upperBounds.length != 1) {
                throw new IllegalArgumentException();
            }
            if (lowerBounds.length == 1) {
                if (lowerBounds[0] == null) {
                    throw new NullPointerException();
                }
                Utils.checkNotPrimitive(lowerBounds[0]);
                if (upperBounds[0] != Object.class) {
                    throw new IllegalArgumentException();
                }
                this.lowerBound = lowerBounds[0];
                this.upperBound = Object.class;
            } else if (upperBounds[0] == null) {
                throw new NullPointerException();
            } else {
                Utils.checkNotPrimitive(upperBounds[0]);
                this.lowerBound = null;
                this.upperBound = upperBounds[0];
            }
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.upperBound};
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return this.lowerBound != null ? new Type[]{this.lowerBound} : Utils.EMPTY_TYPE_ARRAY;
        }

        public boolean equals(Object other) {
            return (other instanceof WildcardType) && Utils.equals(this, (WildcardType) other);
        }

        public int hashCode() {
            return (this.lowerBound != null ? this.lowerBound.hashCode() + 31 : 1) ^ (this.upperBound.hashCode() + 31);
        }

        public String toString() {
            return this.lowerBound != null ? "? super " + Utils.typeToString(this.lowerBound) : this.upperBound == Object.class ? CallerData.f38NA : "? extends " + Utils.typeToString(this.upperBound);
        }
    }
}
