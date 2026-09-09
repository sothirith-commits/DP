.class public Lcom/deepalhome/launcher/view/DuckType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final objectToCoerce:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DuckType;->objectToCoerce:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lcom/deepalhome/launcher/view/DuckType;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/DuckType;->findMethodBySignature(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/deepalhome/launcher/view/DuckType;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DuckType;->objectToCoerce:Ljava/lang/Object;

    return-object p0
.end method

.method public static coerce(Ljava/lang/Object;)Lcom/deepalhome/launcher/view/DuckType;
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/view/DuckType;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/view/DuckType;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private findMethodBySignature(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/deepalhome/launcher/view/DuckType;->objectToCoerce:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private generateProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Lcom/deepalhome/launcher/view/DuckType$CoercedProxy;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/view/DuckType$CoercedProxy;-><init>(Lcom/deepalhome/launcher/view/DuckType;)V

    invoke-static {v0, p1, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private isA(Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DuckType;->objectToCoerce:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public quacksLikeA(Ljava/lang/Class;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/deepalhome/launcher/view/DuckType;->findMethodBySignature(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public to(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/DuckType;->isA(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DuckType;->objectToCoerce:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/DuckType;->quacksLikeA(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/DuckType;->generateProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not coerce object of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DuckType;->objectToCoerce:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
