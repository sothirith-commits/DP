.class public final Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

.field public static final freezeRunnables:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->freezeRunnables:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelFreeze(Leightbitlab/com/blurview/BlurView;)V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->freezeRunnables:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V
    .locals 2

    invoke-static {p0}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    new-instance v0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->freezeRunnables:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
