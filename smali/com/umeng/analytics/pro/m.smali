.class public final Lcom/umeng/analytics/pro/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final a:Lcom/umeng/analytics/pro/m;


# instance fields
.field public c:Z

.field public d:Z

.field public final e:Landroid/os/Handler;

.field public final f:Ljava/util/ArrayList;

.field public final g:Lme/wcy/lrcview/LrcView$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/umeng/analytics/pro/m;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/m;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/m;->a:Lcom/umeng/analytics/pro/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/m;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/m;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->f:Ljava/util/ArrayList;

    new-instance v0, Lme/wcy/lrcview/LrcView$5;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lme/wcy/lrcview/LrcView$5;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/m;->g:Lme/wcy/lrcview/LrcView$5;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/m;->d:Z

    iget-object p1, p0, Lcom/umeng/analytics/pro/m;->g:Lme/wcy/lrcview/LrcView$5;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/umeng/analytics/pro/m;->e:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/m;->d:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/m;->c:Z

    iget-object p1, p0, Lcom/umeng/analytics/pro/m;->g:Lme/wcy/lrcview/LrcView$5;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/umeng/analytics/pro/m;->e:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
