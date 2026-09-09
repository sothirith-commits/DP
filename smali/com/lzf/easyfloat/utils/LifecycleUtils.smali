.class public final Lcom/lzf/easyfloat/utils/LifecycleUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/lzf/easyfloat/utils/LifecycleUtils;

.field public static activityCount:I

.field public static mTopActivity:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/lzf/easyfloat/utils/LifecycleUtils;

    invoke-direct {v0}, Lcom/lzf/easyfloat/utils/LifecycleUtils;-><init>()V

    sput-object v0, Lcom/lzf/easyfloat/utils/LifecycleUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/LifecycleUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setVisible(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/lzf/easyfloat/core/FloatingWindowManager;->INSTANCE:Lcom/lzf/easyfloat/core/FloatingWindowManager;

    sget-object v1, Lcom/lzf/easyfloat/core/FloatingWindowManager;->windowMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->config:Lcom/lzf/easyfloat/data/FloatConfig;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/lzf/easyfloat/data/FloatConfig;->getNeedShow$easyfloat_release()Z

    move-result v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/lzf/easyfloat/core/FloatingWindowManager;->getHelper(Ljava/lang/String;)Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->setVisible(IZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-void
.end method
