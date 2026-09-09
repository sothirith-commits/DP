.class public abstract Lcom/tinnove/renderclient/ClientRenderControl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public client:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

.field public final iCallback:Lcom/umeng/analytics/pro/ah;

.field public final iEngineLifecycleCallback:Lcom/tinnove/renderclient/ClientRenderControl$15;

.field public final mConfigName:Ljava/lang/String;

.field public final mFxaaLevel:I

.field public final mHeight:I

.field public final mIsFxaa:Z

.field public final mIsTranslucent:Z

.field public mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

.field public final mPackageName:Ljava/lang/String;

.field public final mRadius:F

.field public final mRenderMode:I

.field public final mServerName:Ljava/lang/String;

.field public final mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tinnove/renderclient/ClientRenderControl$15;

    invoke-direct {v0, p0}, Lcom/tinnove/renderclient/ClientRenderControl$15;-><init>(Lcom/tinnove/renderclient/ClientRenderControl;)V

    iput-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->iEngineLifecycleCallback:Lcom/tinnove/renderclient/ClientRenderControl$15;

    new-instance v0, Lcom/umeng/analytics/pro/ah;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/ah;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->iCallback:Lcom/umeng/analytics/pro/ah;

    const-string v0, "com.tinnove.renderserver"

    iput-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mPackageName:Ljava/lang/String;

    const-string v0, "com.tinnove.renderserver.service.CocosRemoteRenderService"

    iput-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mServerName:Ljava/lang/String;

    const-string v0, "config_nid"

    iput-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mConfigName:Ljava/lang/String;

    const/16 v0, 0x2ab

    iput v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mWidth:I

    const/16 v0, 0x34e

    iput v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mRadius:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mIsTranslucent:Z

    iput v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mRenderMode:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mFxaaLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mIsFxaa:Z

    return-void
.end method


# virtual methods
.method public abstract activeCamera()V
.end method

.method public final destroy()V
    .locals 5

    iget-object p0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->client:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "CocosRemoteRenderClient"

    if-eqz v1, :cond_0

    const-string p0, "stop, client was stopped"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsStarted:Z

    if-nez v1, :cond_1

    const-string p0, "stop, client was not started"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->tryRemoveBinderFactory()V

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->tryStopAndDestroyRemoteRenderInstance()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mBinderFactory:Lcom/cocos/aidl/ICocosBinderFactory;

    iget-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientId:I

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "stop, unbindService, clientId="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->doUnbindService()V

    goto :goto_0

    :cond_2
    const-string v1, "stop failed, clientId="

    const-string v4, ", mContext="

    invoke-static {v3, v1, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cocos/remoterender/client/lib/renderview/IRenderView;->requestExitAndWait()V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    :cond_3
    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mFactory:Landroidx/core/view/MenuHostHelper;

    iget-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->destroy()V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    :cond_4
    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientCallback:Lcom/umeng/analytics/pro/ah;

    iget-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    if-eqz v1, :cond_5

    iput-object v0, v1, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

    iput-object v0, v1, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSurfaceCallback:Lcom/bumptech/glide/GlideBuilder$1;

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    :cond_5
    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    :cond_6
    :goto_1
    return-void
.end method

.method public final initClientView(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    invoke-direct {v0, p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->client:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mConfigName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mServerName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->client:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iput-object v3, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServicePackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceFullClassName:Ljava/lang/String;

    const-string v1, "default"

    iput-object v1, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceConfigName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tinnove/renderclient/ClientRenderControl;->client:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iput-object v3, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServicePackageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceFullClassName:Ljava/lang/String;

    iput-object v0, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceConfigName:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->client:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTouchEnabled:Z

    iget v2, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mRenderMode:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iput-boolean v4, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsUseTextureView:Z

    const/4 v4, 0x2

    if-eq v2, v1, :cond_3

    if-eq v2, v4, :cond_2

    iput v1, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    goto :goto_2

    :cond_2
    const/4 v2, 0x3

    iput v2, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    goto :goto_2

    :cond_3
    iput v4, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    :goto_2
    iget-boolean v2, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mIsTranslucent:Z

    iput-boolean v2, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTranslucent:Z

    iget v2, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mRadius:F

    iput v2, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRadius:F

    iget v2, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mFxaaLevel:I

    iput v2, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mFxaaLevel:I

    iget-boolean v2, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mIsFxaa:Z

    if-nez v2, :cond_4

    iput v3, v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mAntialiasType:I

    :cond_4
    iget-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->iEngineLifecycleCallback:Lcom/tinnove/renderclient/ClientRenderControl$15;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v5, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sEngineLifecycleCallback:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.cocos.remoterender.ENGINE_LAUNCHED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.cocos.remoterender.ENGINE_SHUTDOWN"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v5, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$4;

    invoke-direct {v5}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$4;-><init>()V

    sput-object v5, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sEngineLifecycleReceiver:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$4;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sEngineLifecycleReceiver:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$4;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_6
    sput-object v2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sEngineLifecycleReceiver:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$4;

    :goto_3
    iget-object p1, p0, Lcom/tinnove/renderclient/ClientRenderControl;->client:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->iCallback:Lcom/umeng/analytics/pro/ah;

    iput-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientCallback:Lcom/umeng/analytics/pro/ah;

    iget-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v5, "CocosRemoteRenderClient"

    if-eqz v0, :cond_7

    const-string p1, "client was stopped"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_7
    iget-boolean v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsStarted:Z

    if-eqz v0, :cond_8

    const-string p1, "client has already started"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_8
    iget-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceFullClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceConfigName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iput-boolean v1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsStarted:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "start, mIsUseTextureView="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsUseTextureView:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsViewTranslucent="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTranslucent:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsViewTouchEnabled="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTouchEnabled:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  mRenderMode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    invoke-static {v6}, Lcom/cocos/remoterender/client/lib/renderview/RenderMode$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    invoke-direct {v0, p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;-><init>(Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;)V

    iput-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    sget-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$7;->$SwitchMap$com$cocos$remoterender$client$lib$renderview$RenderMode:[I

    iget v6, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    invoke-static {v6}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v6

    aget v0, v0, v6

    iget-object v6, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mOnTouchListener:Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;

    if-eq v0, v1, :cond_e

    iget-object v7, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClipRect:Landroid/graphics/RectF;

    const/16 v8, 0x8

    iget-object v9, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mSurfaceCallback:Lcom/bumptech/glide/GlideBuilder$1;

    if-eq v0, v4, :cond_b

    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;

    iget-object v10, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iget-object v10, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mFactory:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, v10}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->setEGLWindowSurfaceFactory(Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;)V

    invoke-virtual {v0, v4}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->setEGLContextClientVersion(I)V

    invoke-virtual {v0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    iget-boolean v4, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTranslucent:Z

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    const/4 v10, -0x3

    invoke-interface {v4, v10}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v4, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;

    invoke-direct {v4, v0, v8, v3}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;II)V

    invoke-virtual {v0, v4}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->setEGLConfigChooser(Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    goto :goto_4

    :cond_9
    new-instance v4, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;

    invoke-direct {v4, v0, v3, v3}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;II)V

    invoke-virtual {v0, v4}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->setEGLConfigChooser(Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;)V

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    :goto_4
    new-instance v4, Lcom/cocos/remoterender/client/lib/TextureRenderer;

    iget v8, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRadius:F

    iget v10, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mFxaaLevel:I

    iget v11, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mAntialiasType:I

    invoke-direct {v4, v8, v7, v10, v11}, Lcom/cocos/remoterender/client/lib/TextureRenderer;-><init>(FLandroid/graphics/RectF;II)V

    iput-object v4, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    iget-object v7, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    iput-object v7, v4, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

    iput-object v9, v4, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSurfaceCallback:Lcom/bumptech/glide/GlideBuilder$1;

    iput-object v2, v4, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFilterMap:Ljava/util/Map;

    iget-boolean v2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTouchEnabled:Z

    if-eqz v2, :cond_a

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    iget-object v2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    invoke-virtual {v0, v2}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->setRenderer(Lcom/cocos/remoterender/client/lib/renderview/Renderer;)V

    invoke-virtual {v0, v3}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->setRenderMode(I)V

    iput-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    goto :goto_6

    :cond_b
    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;

    iget-object v10, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;-><init>(Landroid/content/Context;)V

    iget-object v10, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mFactory:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, v10}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->setEGLWindowSurfaceFactory(Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;)V

    invoke-virtual {v0, v4}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->setEGLContextClientVersion(I)V

    invoke-virtual {v0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->setPreserveEGLContextOnPause(Z)V

    iget-boolean v4, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTranslucent:Z

    xor-int/2addr v4, v1

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-boolean v4, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTranslucent:Z

    if-eqz v4, :cond_c

    new-instance v4, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;

    invoke-direct {v4, v0, v8, v3}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;II)V

    invoke-virtual {v0, v4}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->setEGLConfigChooser(Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;)V

    goto :goto_5

    :cond_c
    new-instance v4, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;

    invoke-direct {v4, v0, v3, v3}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;II)V

    invoke-virtual {v0, v4}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->setEGLConfigChooser(Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;)V

    :goto_5
    new-instance v4, Lcom/cocos/remoterender/client/lib/TextureRenderer;

    iget v8, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRadius:F

    iget v10, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mFxaaLevel:I

    iget v11, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mAntialiasType:I

    invoke-direct {v4, v8, v7, v10, v11}, Lcom/cocos/remoterender/client/lib/TextureRenderer;-><init>(FLandroid/graphics/RectF;II)V

    iput-object v4, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    iget-object v7, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    iput-object v7, v4, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

    iput-object v9, v4, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSurfaceCallback:Lcom/bumptech/glide/GlideBuilder$1;

    iput-object v2, v4, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFilterMap:Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->setRenderer(Lcom/cocos/remoterender/client/lib/renderview/Renderer;)V

    iget-boolean v2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTouchEnabled:Z

    if-eqz v2, :cond_d

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_d
    invoke-virtual {v0, v3}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->setRenderMode(I)V

    iput-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    goto :goto_6

    :cond_e
    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;

    iget-object v2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTouchEnabled:Z

    if-eqz v2, :cond_f

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_f
    iget-object v2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    invoke-virtual {v0, v2}, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->setDrawFrameCallback(Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;)V

    iput-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    :goto_6
    iget-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string p1, "bindService, already binding ..."

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p1}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_11
    const-string p1, "start failed, it\'s not ready!"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object p1, p0, Lcom/tinnove/renderclient/ClientRenderControl;->client:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    iget v0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mWidth:I

    if-lez v0, :cond_12

    iget p0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mHeight:I

    if-lez p0, :cond_12

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    return-object p1
.end method

.method public final pause()V
    .locals 4

    iget-object p0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->client:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pause client="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsPaused="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsPaused:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CocosRemoteRenderClient"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsPaused:Z

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " return"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsPaused:Z

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cocos/remoterender/client/lib/renderview/IRenderView;->onPause()V

    :cond_1
    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    if-eqz p0, :cond_2

    :try_start_0
    check-cast p0, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;

    invoke-virtual {p0}, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final resume()V
    .locals 4

    iget-object p0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->client:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    if-eqz p0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resume client="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mIsPaused="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsPaused:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CocosRemoteRenderClient"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsPaused:Z

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " return"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;

    invoke-virtual {v0}, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cocos/remoterender/client/lib/renderview/IRenderView;->onResume()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsPaused:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final setActiveCamera()V
    .locals 3

    invoke-static {}, Lcom/tinnove/renderclient/ClientDataManager;->getInstance()Lcom/tinnove/renderclient/ClientDataManager;

    move-result-object v0

    iget-object p0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mServerName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tinnove/renderclient/ClientDataManager;->addDataEventManager(Ljava/lang/String;)Lcom/tinnove/renderclient/CocosDataEventManager;

    move-result-object p0

    const-string v0, "cameraName = AdasCamera value = "

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ClientRenderView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string v0, "SceneControl.AdasCamera"

    invoke-virtual {p0, v0, v1}, Lcom/tinnove/renderclient/CocosDataEventManager;->callScript(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
