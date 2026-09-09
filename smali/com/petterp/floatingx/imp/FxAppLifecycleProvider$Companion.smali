.class public final Lcom/petterp/floatingx/imp/FxAppLifecycleProvider$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/petterp/floatingx/imp/FxAppLifecycleProvider$Companion;-><init>()V

    return-void
.end method

.method public static synthetic updateTopActivity$floatingx_release(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_2

    sget-object v0, Lcom/petterp/floatingx/imp/FxAppLifecycleProvider;->_currentActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/petterp/floatingx/imp/FxAppLifecycleProvider;->_currentActivity:Ljava/lang/ref/WeakReference;

    :cond_2
    :goto_1
    return-void
.end method
