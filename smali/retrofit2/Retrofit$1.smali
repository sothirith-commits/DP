.class public final Lretrofit2/Retrofit$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final emptyArgs:[Ljava/lang/Object;

.field public final synthetic this$0:Lretrofit2/Retrofit;

.field public final synthetic val$service:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    iput-object p2, p0, Lretrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lretrofit2/Retrofit$1;->emptyArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lretrofit2/Retrofit$1;->emptyArgs:[Ljava/lang/Object;

    :goto_0
    sget-object v0, Lretrofit2/Platform;->reflection:Lretrofit2/Reflection;

    invoke-virtual {v0, p2}, Lretrofit2/Reflection;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v1

    iget-object v2, p0, Lretrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2, v2, p1, p3}, Lretrofit2/Reflection;->invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    invoke-virtual {p0, v2, p2}, Lretrofit2/Retrofit;->loadServiceMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lretrofit2/ServiceMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method
