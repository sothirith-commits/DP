.class public final Lcom/umeng/analytics/pro/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/umeng/analytics/pro/ao;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;Ljava/lang/ref/WeakReference;Landroid/hardware/HardwareBuffer;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/umeng/analytics/pro/ao;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/pro/ao;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/umeng/analytics/pro/ao;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/umeng/analytics/pro/ao;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/HeaderBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/umeng/analytics/pro/ao;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/pro/ao;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/umeng/analytics/pro/ao;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/umeng/analytics/pro/ao;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/umeng/analytics/pro/ao;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/pro/ao;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/umeng/analytics/pro/ao;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/umeng/analytics/pro/ao;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/umeng/analytics/pro/ao;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcom/umeng/analytics/pro/ao;->b:Ljava/lang/Object;

    check-cast v0, Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v1, v0, Lcom/liulishuo/okdownload/DownloadTask;->listener:Lcom/liulishuo/okdownload/DownloadListener;

    iget-object v2, p0, Lcom/umeng/analytics/pro/ao;->c:Ljava/lang/Object;

    check-cast v2, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget-object p0, p0, Lcom/umeng/analytics/pro/ao;->d:Ljava/lang/Object;

    check-cast p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    invoke-interface {v1, v0, v2, p0}, Lcom/liulishuo/okdownload/DownloadListener;->downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/ao;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/umeng/analytics/pro/ao;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/appbar/HeaderBehavior;

    iget-object v2, v1, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    iget-object v3, p0, Lcom/umeng/analytics/pro/ao;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/material/appbar/HeaderBehavior;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3, v0}, Lcom/google/android/material/appbar/HeaderBehavior;->onFlingFinished(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/ao;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    iget-boolean v2, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsPaused:Z

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/umeng/analytics/pro/ao;->c:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v3

    const-string v4, "CocosRemoteRenderCallback"

    if-eqz v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HardwareBuffer was closed, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "HardwareBuffer updateTexture, "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    check-cast v2, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;

    invoke-virtual {v2, p0}, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->setHardwareBuffer(Landroid/hardware/HardwareBuffer;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " setHardwareBuffer:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TextureRenderer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, v1, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mBufferToCreateTexture:Landroid/hardware/HardwareBuffer;

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mMainThreadHandler:Landroid/os/Handler;

    sget-object v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->UPDATE_TEXTURE_TOKEN:Ljava/lang/Object;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_7
    :goto_2
    return-void

    :pswitch_2
    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/ao;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Lcom/umeng/commonsdk/internal/c$2;

    iget-object v2, p0, Lcom/umeng/analytics/pro/ao;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/core/provider/FontRequestWorker$2;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Lcom/umeng/commonsdk/internal/c$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/umeng/analytics/pro/ao;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_3
    const/16 v1, 0x66

    :try_start_1
    iget-object v2, p0, Lcom/umeng/analytics/pro/ao;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/analytics/pro/ao;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/umeng/analytics/pro/am;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_8

    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "sourceIucc"

    iget-object p0, p0, Lcom/umeng/analytics/pro/ao;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "config"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-object v0, v2

    :catchall_1
    :cond_8
    sget-object p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object p0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    :goto_3
    sget-object v2, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    invoke-static {p0, v1, v2, v0}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;)V

    goto :goto_4

    :catchall_2
    sget-object p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object p0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    goto :goto_3

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
