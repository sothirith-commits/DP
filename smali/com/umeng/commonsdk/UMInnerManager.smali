.class public final Lcom/umeng/commonsdk/UMInnerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final innerImplClazz:Ljava/lang/Class;

.field public static final sendInternalMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Lcom/umeng/commonsdk/UMInnerImpl;

    sput-object v0, Lcom/umeng/commonsdk/UMInnerManager;->innerImplClazz:Ljava/lang/Class;

    const-string v1, "initAndSendInternal"

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/umeng/commonsdk/UMInnerManager;->sendInternalMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
