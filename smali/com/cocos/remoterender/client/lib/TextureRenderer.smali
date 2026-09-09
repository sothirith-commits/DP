.class public final Lcom/cocos/remoterender/client/lib/TextureRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cocos/remoterender/client/lib/renderview/Renderer;


# instance fields
.field public final mAntialiasType:I

.field public mBufferToCreateTexture:Landroid/hardware/HardwareBuffer;

.field public final mClipRect:Landroid/graphics/RectF;

.field public mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

.field public mFragmentHandle:I

.field public mFullScreenQuadVAO:I

.field public mFullScreenQuadVBO:I

.field public final mFxaaLevel:I

.field public mHeight:I

.field public final mIsGLReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsHardwareBufferUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsReleaseBuild:Ljava/lang/Boolean;

.field public mProgramHandle:I

.field public final mRadius:F

.field public final mShaderHeight:I

.field public final mShaderWidth:I

.field public mSharedEGLImagePtr:J

.field public mSharedIBO:I

.field public mSurfaceCallback:Lcom/bumptech/glide/GlideBuilder$1;

.field public mTextureFilterMap:Ljava/util/Map;

.field public mTextureFullScreen:I

.field public mTextureWatermark:I

.field public final mUIScale:F

.field public mVertexHandle:I

.field public mVertexPositionLocation:I

.field public mVertexTextureCoordLocation:I

.field public mWatermarkHeight:I

.field public mWatermarkVAO:I

.field public mWatermarkVBO:I

.field public mWatermarkWidth:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkWidth:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkHeight:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedEGLImagePtr:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsGLReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsHardwareBufferUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureWatermark:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexHandle:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFragmentHandle:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVAO:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVAO:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVBO:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVBO:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedIBO:I

    iput v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexPositionLocation:I

    iput v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexTextureCoordLocation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mRadius:F

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mUIScale:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mClipRect:Landroid/graphics/RectF;

    const/16 v0, 0xa00

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mShaderWidth:I

    const/16 v0, 0x640

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mShaderHeight:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFxaaLevel:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mAntialiasType:I

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/RectF;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkWidth:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkHeight:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedEGLImagePtr:J

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsGLReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsHardwareBufferUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureWatermark:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexHandle:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFragmentHandle:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVAO:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVAO:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVBO:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVBO:I

    iput v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedIBO:I

    iput v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexPositionLocation:I

    iput v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexTextureCoordLocation:I

    iput p1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mRadius:F

    iput-object p2, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mClipRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput p1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mUIScale:F

    const/16 p1, 0x640

    iput p1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mShaderHeight:I

    const/16 p1, 0xa00

    iput p1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mShaderWidth:I

    iput p3, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFxaaLevel:I

    iput p4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mAntialiasType:I

    return-void
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v1

    if-eqz p1, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Error compiling shader: "

    invoke-static {v0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Error creating shader!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final notReleaseBuild()Z
    .locals 1

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsReleaseBuild:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsReleaseBuild:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsReleaseBuild:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onAfterPresent()V
    .locals 2

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsInsertAcquireSyncFence:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsWaitRenderTimeout:Z

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final onDrawFrame()V
    .locals 12

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    invoke-virtual {v0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->onDrawFrameBegin()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-wide v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedEGLImagePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    iget-object v1, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsHardwareBufferUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/16 v5, 0x1403

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/16 v8, 0xde1

    const/16 v9, 0xbe2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v9}, Landroid/opengl/GLES20;->glDisable(I)V

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVAO:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    invoke-static {v7, v6, v5, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->onDrawFrameEnd()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mBufferToCreateTexture:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mBufferToCreateTexture:Landroid/hardware/HardwareBuffer;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " bindHardwareBuffer:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "TextureRenderer"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mBufferToCreateTexture:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->releaseSharedEGLImage()V

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    int-to-long v10, v0

    cmp-long v10, v10, v2

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mBufferToCreateTexture:Landroid/hardware/HardwareBuffer;

    invoke-static {v0, v10}, Lcom/cocos/remoterender/client/lib/HardwareBufferPatch;->bindHardwareBufferReturnEGLImage(ILandroid/hardware/HardwareBuffer;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedEGLImagePtr:J

    cmp-long v0, v10, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    invoke-static {v9}, Landroid/opengl/GLES20;->glDisable(I)V

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    invoke-static {v8, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVAO:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    invoke-static {v7, v6, v5, v4}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

    if-eqz p0, :cond_5

    check-cast p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->onDrawFrameEnd()V

    :cond_5
    return-void
.end method

.method public final onSurfaceChanged(II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v3, 0x10

    const/high16 v18, 0x3f800000    # 1.0f

    const-string v4, "onSurfaceChanged, width="

    const-string v5, ", height="

    const-string v6, " mClipRect="

    invoke-static {v1, v2, v4, v5, v6}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "  mUIScale="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mUIScale:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "TextureRenderer"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    cmpl-float v19, v6, v4

    const/4 v8, 0x0

    if-lez v19, :cond_0

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    int-to-float v1, v2

    mul-float v2, v1, v6

    float-to-int v2, v2

    iput v2, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    sub-float v2, v18, v6

    mul-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    iput v2, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    move v1, v8

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "onSurfaceChanged, mWidth="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mHeight="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  mProgramHandle="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v5, Landroid/graphics/RectF;->left:F

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    iget v9, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    int-to-float v9, v9

    iget v10, v5, Landroid/graphics/RectF;->top:F

    iget v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    int-to-float v11, v11

    iget v12, v5, Landroid/graphics/RectF;->right:F

    new-array v13, v3, [F

    aput v4, v13, v8

    aput v4, v13, v17

    aput v2, v13, v16

    aput v6, v13, v15

    aput v4, v13, v14

    const/16 v21, 0x5

    aput v9, v13, v21

    const/16 v20, 0x6

    aput v2, v13, v20

    const/4 v2, 0x7

    aput v10, v13, v2

    const/16 v2, 0x8

    aput v11, v13, v2

    const/16 v2, 0x9

    aput v4, v13, v2

    const/16 v2, 0xa

    aput v12, v13, v2

    const/16 v2, 0xb

    aput v6, v13, v2

    const/16 v2, 0xc

    aput v11, v13, v2

    const/16 v2, 0xd

    aput v9, v13, v2

    const/16 v2, 0xe

    aput v12, v13, v2

    const/16 v2, 0xf

    aput v10, v13, v2

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVAO:I

    invoke-static {v9}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    iget v9, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVBO:I

    const v10, 0x8892

    invoke-static {v10, v9}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v9, 0x88e4

    invoke-static {v10, v2, v6, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {v8}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v6, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    const-string v9, "uClipRect"

    invoke-static {v6, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iget v9, v5, Landroid/graphics/RectF;->left:F

    iget v10, v5, Landroid/graphics/RectF;->top:F

    iget v11, v5, Landroid/graphics/RectF;->right:F

    iget v12, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6, v9, v10, v11, v12}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    if-nez v19, :cond_1

    iget v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    int-to-float v1, v1

    iget v6, v5, Landroid/graphics/RectF;->left:F

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iget v9, v5, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    iget v9, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    int-to-float v9, v9

    iget v10, v5, Landroid/graphics/RectF;->bottom:F

    iget v11, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v9

    float-to-int v10, v10

    mul-float/2addr v9, v11

    float-to-int v9, v9

    invoke-static {v6, v9, v1, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "setClipRect glViewport 13 x=:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,y="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  ,w="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  ,h="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHeight="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " clipRect="

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  mClipLocation=0"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-lez v19, :cond_2

    iget v5, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    iget v6, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    invoke-static {v8, v1, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_1

    :cond_2
    iget v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    iget v5, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    invoke-static {v8, v8, v1, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :goto_1
    iget v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    const-string v5, "uScreen"

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v5, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v6, v5

    iget v5, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    int-to-float v5, v5

    const/high16 v7, -0x40000000    # -2.0f

    div-float/2addr v7, v5

    new-array v5, v3, [F

    aput v6, v5, v8

    aput v4, v5, v17

    aput v4, v5, v16

    aput v4, v5, v15

    aput v4, v5, v14

    const/4 v6, 0x5

    aput v7, v5, v6

    const/4 v6, 0x6

    aput v4, v5, v6

    const/4 v6, 0x7

    aput v4, v5, v6

    const/16 v6, 0x8

    aput v4, v5, v6

    const/16 v6, 0x9

    aput v4, v5, v6

    const/16 v6, 0xa

    aput v4, v5, v6

    const/16 v6, 0xb

    aput v4, v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    const/16 v7, 0xc

    aput v6, v5, v7

    const/16 v6, 0xd

    aput v18, v5, v6

    const/16 v6, 0xe

    aput v4, v5, v6

    const/16 v4, 0xf

    aput v18, v5, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    div-int/2addr v4, v3

    invoke-static {v1, v4, v8, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    const-string v2, "uRadius"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v2, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mRadius:F

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSurfaceCallback:Lcom/bumptech/glide/GlideBuilder$1;

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWidth:I

    iget v0, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mHeight:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSurfaceChanged: w="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CocosRemoteRenderClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final onSurfaceCreated()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const-string v10, "TextureRenderer"

    const-string v11, "onSurfaceCreated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->tearDown()V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "#version 300 es\n#define ANTIALIAS_TYPE "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mAntialiasType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\n#define FXAA_DEBUG 0\nprecision highp float;\n\n#if ANTIALIAS_TYPE == 1\n    vec4 fxaa(sampler2D tex, vec2 fragCoord, vec2 resolution, vec2 v_rgbNW, vec2 v_rgbNE, vec2 v_rgbSW, vec2 v_rgbSE, vec2 v_rgbM) {\n        vec4 color;\n        mediump vec2 inverseVP = vec2(1.0 / resolution.x, 1.0 / resolution.y);\n        vec3 rgbNW = texture(tex, v_rgbNW).xyz;\n        vec3 rgbNE = texture(tex, v_rgbNE).xyz;\n        vec3 rgbSW = texture(tex, v_rgbSW).xyz;\n        vec3 rgbSE = texture(tex, v_rgbSE).xyz;\n        vec4 texColor = texture(tex, v_rgbM);\n        vec3 rgbM = texColor.xyz;\n        vec3 luma = vec3(0.299, 0.587, 0.114);\n        float lumaNW = dot(rgbNW, luma);\n        float lumaNE = dot(rgbNE, luma);\n        float lumaSW = dot(rgbSW, luma);\n        float lumaSE = dot(rgbSE, luma);\n        float lumaM = dot(rgbM, luma);\n        float lumaMin = min(lumaM, min(min(lumaNW, lumaNE), min(lumaSW, lumaSE)));\n        float lumaMax = max(lumaM, max(max(lumaNW, lumaNE), max(lumaSW, lumaSE)));\n        mediump vec2 dir;\n        dir.x = -((lumaNW + lumaNE) - (lumaSW + lumaSE));\n        dir.y = ((lumaNW + lumaSW) - (lumaNE + lumaSE));\n        float dirReduce = max((lumaNW + lumaNE + lumaSW + lumaSE) *\n        (0.25 * (1.0 / 8.0)), (1.0/ 128.0));\n        float rcpDirMin = 1.0 / (min(abs(dir.x), abs(dir.y)) + dirReduce);\n        dir = min(vec2(8.0, 8.0), max(vec2(-8.0, -8.0), dir * rcpDirMin)) * inverseVP;\n        vec3 rgbA = 0.5 * (\n        texture(tex, fragCoord * inverseVP + dir * (1.0 / 3.0 - 0.5)).xyz +\n        texture(tex, fragCoord * inverseVP + dir * (2.0 / 3.0 - 0.5)).xyz);\n        vec3 rgbB = rgbA * 0.5 + 0.25 * (\n        texture(tex, fragCoord * inverseVP + dir * -0.5).xyz +\n        texture(tex, fragCoord * inverseVP + dir * 0.5).xyz);\n        float lumaB = dot(rgbB, luma);\n        if ((lumaB < lumaMin) || (lumaB > lumaMax))\n        color = vec4(rgbA, texColor.a);\n        else\n        color = vec4(rgbB, texColor.a);\n        return color;\n    }\n#endif\n#if ANTIALIAS_TYPE == 2\n    vec4 fragTextureGrad (sampler2D tex, vec2 P, vec2 dPdx, vec2 dPdy) {\n        return textureGrad(tex, P, dPdx, dPdy);\n    }\n    vec4 fragTextureGrad (samplerCube tex, vec3 P, vec3 dPdx, vec3 dPdy) {\n        return textureGrad(tex, P, dPdx, dPdy);\n    }\n    #define FxaaTex sampler2D\n    #define int2 vec2\n    #define float2 vec2\n    #define float3 vec3\n    #define float4 vec4\n    #define FxaaBool3 bvec3\n    #define FxaaInt2 vec2\n    #define FxaaFloat2 vec2\n    #define FxaaFloat3 vec3\n    #define FxaaFloat4 vec4\n    #define FxaaBool2Float(a) mix(0.0, 1.0, (a))\n    #define FxaaPow3(x, y) pow(x, y)\n    #define FxaaSel3(f, t, b) mix((f), (t), (b))\n    #define FxaaToFloat3(a) FxaaFloat3((a), (a), (a))\n    float4 FxaaTexLod0(FxaaTex tex, float2 pos) {\n        return texture(tex, pos.xy);\n    }\n    float4 FxaaTexGrad(FxaaTex tex, float2 pos, float2 grad) {\n        return fragTextureGrad(tex, pos.xy, grad, grad);\n    }\n    float4 FxaaTexOff(FxaaTex tex, float2 pos, int2 off, float2 rcpFrame) {\n        return FxaaTexLod0(tex, pos.xy + vec2(off.x, off.y) * rcpFrame);\n    }\n    #define FXAA_SRGB_ROP 0\n    #ifndef FXAA_PRESET\n        #define FXAA_PRESET "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFxaaLevel:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "\n    #endif\n    #if (FXAA_PRESET == 0)\n        #define FXAA_EDGE_THRESHOLD      (1.0/4.0)\n        #define FXAA_EDGE_THRESHOLD_MIN  (1.0/12.0)\n        #define FXAA_SEARCH_STEPS        2\n        #define FXAA_SEARCH_ACCELERATION 4\n        #define FXAA_SEARCH_THRESHOLD    (1.0/4.0)\n        #define FXAA_SUBPIX              1\n        #define FXAA_SUBPIX_FASTER       1\n        #define FXAA_SUBPIX_CAP          (2.0/3.0)\n        #define FXAA_SUBPIX_TRIM         (1.0/4.0)\n    #endif\n    #if (FXAA_PRESET == 1)\n        #define FXAA_EDGE_THRESHOLD      (1.0/8.0)\n        #define FXAA_EDGE_THRESHOLD_MIN  (1.0/16.0)\n        #define FXAA_SEARCH_STEPS        4\n        #define FXAA_SEARCH_ACCELERATION 3\n        #define FXAA_SEARCH_THRESHOLD    (1.0/4.0)\n        #define FXAA_SUBPIX              1\n        #define FXAA_SUBPIX_FASTER       0\n        #define FXAA_SUBPIX_CAP          (3.0/4.0)\n        #define FXAA_SUBPIX_TRIM         (1.0/4.0)\n    #endif\n    #if (FXAA_PRESET == 2)\n        #define FXAA_EDGE_THRESHOLD      (1.0/8.0)\n        #define FXAA_EDGE_THRESHOLD_MIN  (1.0/24.0)\n        #define FXAA_SEARCH_STEPS        8\n        #define FXAA_SEARCH_ACCELERATION 2\n        #define FXAA_SEARCH_THRESHOLD    (1.0/4.0)\n        #define FXAA_SUBPIX              1\n        #define FXAA_SUBPIX_FASTER       0\n        #define FXAA_SUBPIX_CAP          (3.0/4.0)\n        #define FXAA_SUBPIX_TRIM         (1.0/4.0)\n    #endif\n    #if (FXAA_PRESET == 3)\n        #define FXAA_EDGE_THRESHOLD      (1.0/8.0)\n        #define FXAA_EDGE_THRESHOLD_MIN  (1.0/24.0)\n        #define FXAA_SEARCH_STEPS        16\n        #define FXAA_SEARCH_ACCELERATION 1\n        #define FXAA_SEARCH_THRESHOLD    (1.0/4.0)\n        #define FXAA_SUBPIX              1\n        #define FXAA_SUBPIX_FASTER       0\n        #define FXAA_SUBPIX_CAP          (3.0/4.0)\n        #define FXAA_SUBPIX_TRIM         (1.0/4.0)\n    #endif\n    #if (FXAA_PRESET == 4)\n        #define FXAA_EDGE_THRESHOLD      (1.0/8.0)\n        #define FXAA_EDGE_THRESHOLD_MIN  (1.0/24.0)\n        #define FXAA_SEARCH_STEPS        24\n        #define FXAA_SEARCH_ACCELERATION 1\n        #define FXAA_SEARCH_THRESHOLD    (1.0/4.0)\n        #define FXAA_SUBPIX              1\n        #define FXAA_SUBPIX_FASTER       0\n        #define FXAA_SUBPIX_CAP          (3.0/4.0)\n        #define FXAA_SUBPIX_TRIM         (1.0/4.0)\n    #endif\n    #if (FXAA_PRESET == 5)\n        #define FXAA_EDGE_THRESHOLD      (1.0/8.0)\n        #define FXAA_EDGE_THRESHOLD_MIN  (1.0/24.0)\n        #define FXAA_SEARCH_STEPS        32\n        #define FXAA_SEARCH_ACCELERATION 1\n        #define FXAA_SEARCH_THRESHOLD    (1.0/4.0)\n        #define FXAA_SUBPIX              1\n        #define FXAA_SUBPIX_FASTER       0\n        #define FXAA_SUBPIX_CAP          (3.0/4.0)\n        #define FXAA_SUBPIX_TRIM         (1.0/4.0)\n    #endif\n    #define FXAA_SUBPIX_TRIM_SCALE (1.0/(1.0 - FXAA_SUBPIX_TRIM))\n    float FxaaLuma(float3 rgb) {\n        return rgb.y * (0.587/0.299) + rgb.x;\n    }\n    float3 FxaaLerp3(float3 a, float3 b, float amountOfA) {\n        return (FxaaToFloat3(-amountOfA) * b) +\n        ((a * FxaaToFloat3(amountOfA)) + b);\n    }\n    float3 FxaaFilterReturn(float3 rgb) {\n        #if FXAA_SRGB_ROP\n            return FxaaSel3(\n            rgb * FxaaToFloat3(1.0/12.92), FxaaPow3(\n            rgb * FxaaToFloat3(1.0/1.055) + FxaaToFloat3(0.055/1.055), FxaaToFloat3(2.4)), rgb > FxaaToFloat3(0.04045));\n        #else\n            return rgb;\n        #endif\n    }\n    float3 FxaaPixelShader(\n    float2 pos, FxaaTex tex, float2 rcpFrame) {\n        float3 rgbN = FxaaTexOff(tex, pos.xy, FxaaInt2( 0, -1), rcpFrame).xyz;\n        float3 rgbW = FxaaTexOff(tex, pos.xy, FxaaInt2(-1, 0), rcpFrame).xyz;\n        float3 rgbM = FxaaTexOff(tex, pos.xy, FxaaInt2( 0, 0), rcpFrame).xyz;\n        float3 rgbE = FxaaTexOff(tex, pos.xy, FxaaInt2( 1, 0), rcpFrame).xyz;\n        float3 rgbS = FxaaTexOff(tex, pos.xy, FxaaInt2( 0, 1), rcpFrame).xyz;\n        float lumaN = FxaaLuma(rgbN);\n        float lumaW = FxaaLuma(rgbW);\n        float lumaM = FxaaLuma(rgbM);\n        float lumaE = FxaaLuma(rgbE);\n        float lumaS = FxaaLuma(rgbS);\n        float rangeMin = min(lumaM, min(min(lumaN, lumaW), min(lumaS, lumaE)));\n        float rangeMax = max(lumaM, max(max(lumaN, lumaW), max(lumaS, lumaE)));\n        float range = rangeMax - rangeMin;\n        #if FXAA_DEBUG\n            float lumaO = lumaM / (1.0 + (0.587/0.299));\n        #endif\n        if(range < max(FXAA_EDGE_THRESHOLD_MIN, rangeMax * FXAA_EDGE_THRESHOLD)) {\n            #if FXAA_DEBUG\n                return FxaaFilterReturn(FxaaToFloat3(lumaO));\n            #endif\n            return FxaaFilterReturn(rgbM);\n        }\n        #if FXAA_SUBPIX > 0\n            #if FXAA_SUBPIX_FASTER\n                float3 rgbL = (rgbN + rgbW + rgbE + rgbS + rgbM) *\n                FxaaToFloat3(1.0/5.0);\n            #else\n                float3 rgbL = rgbN + rgbW + rgbM + rgbE + rgbS;\n            #endif\n        #endif\n        #if FXAA_SUBPIX != 0\n            float lumaL = (lumaN + lumaW + lumaE + lumaS) * 0.25;\n            float rangeL = abs(lumaL - lumaM);\n        #endif\n        #if FXAA_SUBPIX == 1\n            float blendL = max(0.0, (rangeL / range) - FXAA_SUBPIX_TRIM) * FXAA_SUBPIX_TRIM_SCALE;\n            blendL = min(FXAA_SUBPIX_CAP, blendL);\n        #endif\n        #if FXAA_SUBPIX == 2\n            float blendL = rangeL / range;\n        #endif\n        float3 rgbNW = FxaaTexOff(tex, pos.xy, FxaaInt2(-1, -1), rcpFrame).xyz;\n        float3 rgbNE = FxaaTexOff(tex, pos.xy, FxaaInt2( 1, -1), rcpFrame).xyz;\n        float3 rgbSW = FxaaTexOff(tex, pos.xy, FxaaInt2(-1, 1), rcpFrame).xyz;\n        float3 rgbSE = FxaaTexOff(tex, pos.xy, FxaaInt2( 1, 1), rcpFrame).xyz;\n        #if (FXAA_SUBPIX_FASTER == 0) && (FXAA_SUBPIX > 0)\n            rgbL += (rgbNW + rgbNE + rgbSW + rgbSE);\n            rgbL *= FxaaToFloat3(1.0/9.0);\n        #endif\n        float lumaNW = FxaaLuma(rgbNW);\n        float lumaNE = FxaaLuma(rgbNE);\n        float lumaSW = FxaaLuma(rgbSW);\n        float lumaSE = FxaaLuma(rgbSE);\n        float edgeVert = abs((0.25 * lumaNW) + (-0.5 * lumaN) + (0.25 * lumaNE)) +\n        abs((0.50 * lumaW ) + (-1.0 * lumaM) + (0.50 * lumaE )) +\n        abs((0.25 * lumaSW) + (-0.5 * lumaS) + (0.25 * lumaSE));\n        float edgeHorz = abs((0.25 * lumaNW) + (-0.5 * lumaW) + (0.25 * lumaSW)) +\n        abs((0.50 * lumaN ) + (-1.0 * lumaM) + (0.50 * lumaS )) +\n        abs((0.25 * lumaNE) + (-0.5 * lumaE) + (0.25 * lumaSE));\n        bool horzSpan = edgeHorz >= edgeVert;\n        float lengthSign = horzSpan ? -rcpFrame.y : -rcpFrame.x;\n        if(!horzSpan) lumaN = lumaW;\n        if(!horzSpan) lumaS = lumaE;\n        float gradientN = abs(lumaN - lumaM);\n        float gradientS = abs(lumaS - lumaM);\n        lumaN = (lumaN + lumaM) * 0.5;\n        lumaS = (lumaS + lumaM) * 0.5;\n        bool pairN = gradientN >= gradientS;\n        if(!pairN) lumaN = lumaS;\n        if(!pairN) gradientN = gradientS;\n        if(!pairN) lengthSign *= -1.0;\n        float2 posN;\n        posN.x = pos.x + (horzSpan ? 0.0 : lengthSign * 0.5);\n        posN.y = pos.y + (horzSpan ? lengthSign * 0.5 : 0.0);\n        gradientN *= FXAA_SEARCH_THRESHOLD;\n        float2 posP = posN;\n        float2 offNP = horzSpan ?\n        FxaaFloat2(rcpFrame.x, 0.0) :\n        FxaaFloat2(0.0, rcpFrame.y);\n        float lumaEndN = lumaN;\n        float lumaEndP = lumaN;\n        bool doneN = false;\n        bool doneP = false;\n        #if FXAA_SEARCH_ACCELERATION == 1\n            posN += offNP * FxaaFloat2(-1.0, -1.0);\n            posP += offNP * FxaaFloat2( 1.0, 1.0);\n        #endif\n        #if FXAA_SEARCH_ACCELERATION == 2\n            posN += offNP * FxaaFloat2(-1.5, -1.5);\n            posP += offNP * FxaaFloat2( 1.5, 1.5);\n            offNP *= FxaaFloat2(2.0, 2.0);\n        #endif\n        #if FXAA_SEARCH_ACCELERATION == 3\n            posN += offNP * FxaaFloat2(-2.0, -2.0);\n            posP += offNP * FxaaFloat2( 2.0, 2.0);\n            offNP *= FxaaFloat2(3.0, 3.0);\n        #endif\n        #if FXAA_SEARCH_ACCELERATION == 4\n            posN += offNP * FxaaFloat2(-2.5, -2.5);\n            posP += offNP * FxaaFloat2( 2.5, 2.5);\n            offNP *= FxaaFloat2(4.0, 4.0);\n        #endif\n        for(int i = 0; i < FXAA_SEARCH_STEPS; i++) {\n            #if FXAA_SEARCH_ACCELERATION == 1\n                if(!doneN) lumaEndN = FxaaLuma(FxaaTexLod0(tex, posN.xy).xyz);\n                if(!doneP) lumaEndP = FxaaLuma(FxaaTexLod0(tex, posP.xy).xyz);\n            #else\n                if(!doneN) lumaEndN = FxaaLuma(FxaaTexGrad(tex, posN.xy, offNP).xyz);\n                if(!doneP) lumaEndP = FxaaLuma(FxaaTexGrad(tex, posP.xy, offNP).xyz);\n            #endif\n            doneN = doneN || (abs(lumaEndN - lumaN) >= gradientN);\n            doneP = doneP || (abs(lumaEndP - lumaN) >= gradientN);\n            if(doneN && doneP) break;\n            if(!doneN) posN -= offNP;\n            if(!doneP) posP += offNP;\n        }\n        float dstN = horzSpan ? pos.x - posN.x : pos.y - posN.y;\n        float dstP = horzSpan ? posP.x - pos.x : posP.y - pos.y;\n        bool directionN = dstN < dstP;\n        lumaEndN = directionN ? lumaEndN : lumaEndP;\n        if(((lumaM - lumaN) < 0.0) == ((lumaEndN - lumaN) < 0.0))\n        lengthSign = 0.0;\n        float spanLength = (dstP + dstN);\n        dstN = directionN ? dstN : dstP;\n        float subPixelOffset = (0.5 + (dstN * (-1.0/spanLength))) * lengthSign;\n        float3 rgbF = FxaaTexLod0(tex, FxaaFloat2(\n        pos.x + (horzSpan ? 0.0 : subPixelOffset), pos.y + (horzSpan ? subPixelOffset : 0.0))).xyz;\n        #if FXAA_SUBPIX == 0\n            return FxaaFilterReturn(rgbF);\n        #else\n            return FxaaFilterReturn(FxaaLerp3(rgbL, rgbF, blendL));\n        #endif\n    }\n#endif\n\n\nvoid texcoords(vec2 fragCoord, vec2 resolution, out vec2 v_rgbNW, out vec2 v_rgbNE, out vec2 v_rgbSW, out vec2 v_rgbSE, out vec2 v_rgbM) {\n    vec2 inverseVP = 1.0 / resolution.xy;\n    v_rgbNW = (fragCoord + vec2(-1.0, -1.0)) * inverseVP;\n    v_rgbNE = (fragCoord + vec2(1.0, -1.0)) * inverseVP;\n    v_rgbSW = (fragCoord + vec2(-1.0, 1.0)) * inverseVP;\n    v_rgbSE = (fragCoord + vec2(1.0, 1.0)) * inverseVP;\n    v_rgbM = vec2(fragCoord * inverseVP);\n}\n\nfloat remap(float x, float t1, float t2, float s1, float s2)\n{\n  return (x - t1) / (t2 - t1) * (s2 - s1) + s1;\n}\n\n\nuniform sampler2D uTexture;\nuniform vec4 uClipRect;\nin vec2 vTexPos;\nin float vRadius;\nin float vRatio;\nout vec4 vFragColor;\n\nvoid main() {\n    vec2 resolution = vec2("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mShaderWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mShaderHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ");\n    vec4 color = texture(uTexture, vTexPos);\n    vec2 uv = vec2(remap(vTexPos.x, uClipRect.x, uClipRect.z, 0.0, 1.0), remap(vTexPos.y, uClipRect.y, uClipRect.w, 0.0, 1.0));\n    vec2 p = abs(step(0.5, uv) - uv);\n    float temp = (step(vRadius, p.x) > 0.0 || step(vRadius, p.y * vRatio) > 0.0 || step(length(vec2(p.x - vRadius, p.y * vRatio - vRadius)), vRadius) > 0.0) ? 1.0 : 0.0;\n    if (temp == 0.0) { discard;}\n    #if ANTIALIAS_TYPE == 1\n        mediump vec2 v_rgbNW;\n        mediump vec2 v_rgbNE;\n        mediump vec2 v_rgbSW;\n        mediump vec2 v_rgbSE;\n        mediump vec2 v_rgbM;\n        vec2 fragCoord = vTexPos * resolution;\n        texcoords(fragCoord, resolution, v_rgbNW, v_rgbNE, v_rgbSW, v_rgbSE, v_rgbM);\n        vFragColor = fxaa(uTexture, fragCoord, resolution, v_rgbNW, v_rgbNE, v_rgbSW, v_rgbSE, v_rgbM);\n    #elif ANTIALIAS_TYPE == 2\n        vFragColor = vec4(FxaaPixelShader(vTexPos, uTexture, 1.0 / resolution.xy), color.a);\n    #else\n        vFragColor = color;\n    #endif\n}\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v12, 0x8b31

    const-string v13, "#version 300 es\nuniform mat4 uScreen;\nuniform float uRadius;\nin vec2 aPosition;\nin vec2 aTexPos;\nout vec2 vTexPos;\nout float vRadius;\nout float vRatio;\nvoid main() {\n  vTexPos = aTexPos;\n  vRadius = uRadius;\n  vRatio = (-2.0 / uScreen[1][1]) / (2.0 / uScreen[0][0]);\n  gl_Position = uScreen * vec4(aPosition.xy, 0.0, 1.0);\n}"

    invoke-static {v12, v13}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexHandle:I

    const v12, 0x8b30

    invoke-static {v12, v11}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->loadShader(ILjava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFragmentHandle:I

    iget v12, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexHandle:I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v13

    if-eqz v13, :cond_8

    invoke-static {v13, v12}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v13, v11}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v13}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v11, v5, [I

    const v12, 0x8b82

    invoke-static {v13, v12, v11, v6}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v11, v11, v6

    if-eqz v11, :cond_7

    iput v13, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    invoke-static {v13}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    const-string v12, "aPosition"

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexPositionLocation:I

    iget v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    const-string v12, "aTexPos"

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v11

    iput v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexTextureCoordLocation:I

    iget v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    const-string v12, "uTexture"

    invoke-static {v11, v12}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v11

    invoke-static {v11, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    const-string v11, "destroyTexture"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    filled-new-array {v11}, [I

    move-result-object v11

    invoke-static {v5, v11, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v6, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    :goto_0
    const-string v11, "createTexture..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v6}, [I

    move-result-object v11

    iput v6, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    invoke-static {v5, v11, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v11, v11, v6

    iput v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    const/16 v12, 0x2801

    const/16 v13, 0x2800

    const/16 v14, 0xde1

    if-nez v11, :cond_1

    const-string v11, "glGenTextures failed!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    invoke-static {v14, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFilterMap:Ljava/util/Map;

    if-eqz v11, :cond_4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const-string v15, ");"

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFilterMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v4, "glTexParameteri(GLES30.GL_TEXTURE_MIN_FILTER, "

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/16 v9, 0x2601

    :goto_1
    iget-object v4, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFilterMap:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFilterMap:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v3, "glTexParameteri(GLES30.GL_TEXTURE_MAG_FILTER, "

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v9

    goto :goto_2

    :cond_3
    move v15, v9

    const/16 v4, 0x2601

    goto :goto_2

    :cond_4
    const/16 v4, 0x2601

    const/16 v15, 0x2601

    :goto_2
    invoke-static {v14, v12, v15}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v14, v13, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->notReleaseBuild()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v4, "[Dev] Version: 0.9.5"

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    iget v11, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v15, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    sub-float/2addr v11, v15

    float-to-double v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v8, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v8, v8

    invoke-virtual {v2, v4, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v8, -0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget v8, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v8, v8

    invoke-virtual {v2, v4, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-array v2, v5, [I

    invoke-static {v5, v2, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v2, v2, v6

    iput v2, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureWatermark:I

    invoke-static {v14, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2600

    invoke-static {v14, v12, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v14, v13, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v14, v6, v1, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkHeight:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const/16 v1, 0xb90

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    filled-new-array {v6}, [I

    move-result-object v1

    invoke-static {v5, v1, v6}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    aget v1, v1, v6

    iput v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVAO:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    filled-new-array {v6}, [I

    move-result-object v1

    invoke-static {v5, v1, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v1, v1, v6

    iput v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVBO:I

    const v2, 0x8892

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v1, 0x40

    const/4 v3, 0x0

    const v4, 0x88e4

    invoke-static {v2, v1, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v3, 0x6

    new-array v8, v3, [S

    fill-array-data v8, :array_0

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    filled-new-array {v6}, [I

    move-result-object v8

    invoke-static {v5, v8, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v8, v8, v6

    iput v8, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedIBO:I

    const v10, 0x8893

    invoke-static {v10, v8}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v8, 0xc

    invoke-static {v10, v8, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    iget v3, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexPositionLocation:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v3, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexPositionLocation:I

    const/16 v19, 0x1406

    const/16 v20, 0x0

    const/16 v18, 0x2

    const/16 v21, 0x10

    const/16 v22, 0x0

    move/from16 v17, v3

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v3, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexTextureCoordLocation:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v3, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexTextureCoordLocation:I

    const/16 v22, 0x8

    move/from16 v17, v3

    invoke-static/range {v17 .. v22}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {v6}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v10, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->notReleaseBuild()Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_4

    :cond_6
    filled-new-array {v6}, [I

    move-result-object v3

    invoke-static {v5, v3, v6}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    aget v3, v3, v6

    iput v3, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVAO:I

    invoke-static {v3}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    filled-new-array {v6}, [I

    move-result-object v3

    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    aget v3, v3, v6

    iput v3, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVBO:I

    iget v3, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkHeight:I

    int-to-float v3, v3

    const/high16 v8, 0x40a00000    # 5.0f

    sub-float/2addr v3, v8

    iget v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkWidth:I

    int-to-float v11, v11

    sub-float/2addr v11, v8

    const/16 v12, 0x10

    new-array v12, v12, [F

    aput v8, v12, v6

    aput v8, v12, v5

    const/4 v13, 0x2

    aput v7, v12, v13

    const/4 v13, 0x3

    aput v7, v12, v13

    const/4 v13, 0x4

    aput v8, v12, v13

    const/4 v13, 0x5

    aput v3, v12, v13

    const/4 v13, 0x6

    aput v7, v12, v13

    const/4 v13, 0x7

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    const/16 v13, 0x8

    aput v11, v12, v13

    const/16 v13, 0x9

    aput v8, v12, v13

    const/16 v8, 0xa

    aput v14, v12, v8

    const/16 v8, 0xb

    aput v7, v12, v8

    const/16 v7, 0xc

    aput v11, v12, v7

    const/16 v7, 0xd

    aput v3, v12, v7

    const/16 v3, 0xe

    aput v14, v12, v3

    const/16 v3, 0xf

    aput v14, v12, v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v7, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVAO:I

    invoke-static {v7}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    iget v7, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVBO:I

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v2, v1, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedIBO:I

    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexPositionLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexPositionLocation:I

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v12, 0x2

    const/16 v15, 0x10

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v1, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexTextureCoordLocation:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v11, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexTextureCoordLocation:I

    const/16 v16, 0x8

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {v6}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v10, v6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    :goto_4
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsGLReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_7
    invoke-static {v13}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in program linking: "

    invoke-static {v2, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error creating program!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x3s
        0x2s
        0x0s
    .end array-data
.end method

.method public final releaseSharedEGLImage()V
    .locals 6

    iget-wide v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedEGLImagePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "releaseSharedEGLImage, destroyEGLImage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedEGLImagePtr:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextureRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedEGLImagePtr:J

    invoke-static {v0, v1}, Lcom/cocos/remoterender/client/lib/HardwareBufferPatch;->destroyEGLImage(J)V

    iput-wide v2, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedEGLImagePtr:J

    :cond_0
    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsHardwareBufferUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final tearDown()V
    .locals 7

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const-string v2, "TextureRenderer"

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EGL_NO_CONTEXT tid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexHandle:I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFragmentHandle:I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVAO:I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVBO:I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedIBO:I

    iput v3, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexPositionLocation:I

    iput v3, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexTextureCoordLocation:I

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->releaseSharedEGLImage()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "currentContext:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/opengl/EGLObjectHandle;->getNativeHandle()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " tid:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    if-eq v0, v3, :cond_1

    const-string v0, "tearDown"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v3, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mProgramHandle:I

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexHandle:I

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFragmentHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFragmentHandle:I

    :cond_1
    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVAO:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVAO:I

    :cond_2
    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVAO:I

    if-eqz v0, :cond_3

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVAO:I

    :cond_3
    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVBO:I

    if-eqz v0, :cond_4

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mFullScreenQuadVBO:I

    :cond_4
    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVBO:I

    if-eqz v0, :cond_5

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mWatermarkVBO:I

    :cond_5
    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedIBO:I

    if-eqz v0, :cond_6

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mSharedIBO:I

    :cond_6
    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const-string v0, "destroyTexture"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureFullScreen:I

    :goto_0
    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->notReleaseBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureWatermark:I

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const-string v0, "destroyWatermarkTexture"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureWatermark:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v4, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mTextureWatermark:I

    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->releaseSharedEGLImage()V

    iput v3, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexPositionLocation:I

    iput v3, p0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mVertexTextureCoordLocation:I

    return-void
.end method
