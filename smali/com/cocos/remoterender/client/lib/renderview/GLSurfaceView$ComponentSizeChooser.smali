.class public Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mAlphaSize:I

.field public final mBlueSize:I

.field public final mConfigSpec:[I

.field public final mDepthSize:I

.field public final mGreenSize:I

.field public final mRedSize:I

.field public final mStencilSize:I

.field public final mValue:[I

.field public final this$0:Landroid/view/View;

.field public final this$0$1:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;II)V
    .locals 11

    const/4 v0, 0x0

    iput v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->this$0:Landroid/view/View;

    const/16 v0, 0xd

    new-array v1, v0, [I

    const/16 v2, 0x3024

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    const/4 v5, 0x2

    const/16 v6, 0x3023

    aput v6, v1, v5

    const/4 v6, 0x3

    aput v4, v1, v6

    const/4 v7, 0x4

    const/16 v8, 0x3022

    aput v8, v1, v7

    const/4 v8, 0x5

    aput v4, v1, v8

    const/4 v8, 0x6

    const/16 v9, 0x3021

    aput v9, v1, v8

    const/4 v8, 0x7

    aput p2, v1, v8

    const/16 v8, 0x3025

    aput v8, v1, v4

    const/16 v8, 0x9

    aput p3, v1, v8

    const/16 v8, 0xa

    const/16 v9, 0x3026

    aput v9, v1, v8

    const/16 v8, 0xb

    aput v3, v1, v8

    const/16 v8, 0xc

    const/16 v9, 0x3038

    aput v9, v1, v8

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->this$0$1:Landroid/view/View;

    iget v10, p1, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLContextClientVersion:I

    if-eq v10, v5, :cond_0

    if-eq v10, v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v6, 0xf

    new-array v6, v6, [I

    invoke-static {v1, v3, v6, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x3040

    aput v1, v6, v8

    iget p1, p1, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLContextClientVersion:I

    if-ne p1, v5, :cond_1

    aput v7, v6, v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x40

    aput p1, v6, v0

    :goto_0
    const/16 p1, 0xe

    aput v9, v6, p1

    move-object v1, v6

    :goto_1
    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mConfigSpec:[I

    new-array p1, v2, [I

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    iput p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    iput p3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    iput v3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    return-void
.end method

.method public constructor <init>(Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;II)V
    .locals 11

    const/4 v0, 0x1

    iput v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->this$0:Landroid/view/View;

    const/16 v0, 0xd

    new-array v1, v0, [I

    const/16 v2, 0x3024

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    const/4 v5, 0x2

    const/16 v6, 0x3023

    aput v6, v1, v5

    const/4 v6, 0x3

    aput v4, v1, v6

    const/4 v7, 0x4

    const/16 v8, 0x3022

    aput v8, v1, v7

    const/4 v8, 0x5

    aput v4, v1, v8

    const/4 v8, 0x6

    const/16 v9, 0x3021

    aput v9, v1, v8

    const/4 v8, 0x7

    aput p2, v1, v8

    const/16 v8, 0x3025

    aput v8, v1, v4

    const/16 v8, 0x9

    aput p3, v1, v8

    const/16 v8, 0xa

    const/16 v9, 0x3026

    aput v9, v1, v8

    const/16 v8, 0xb

    aput v3, v1, v8

    const/16 v8, 0xc

    const/16 v9, 0x3038

    aput v9, v1, v8

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->this$0$1:Landroid/view/View;

    iget v10, p1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLContextClientVersion:I

    if-eq v10, v5, :cond_0

    if-eq v10, v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v6, 0xf

    new-array v6, v6, [I

    invoke-static {v1, v3, v6, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x3040

    aput v1, v6, v8

    iget p1, p1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLContextClientVersion:I

    if-ne p1, v5, :cond_1

    aput v7, v6, v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x40

    aput p1, v6, v0

    :goto_0
    const/16 p1, 0xe

    aput v9, v6, p1

    move-object v1, v6

    :goto_1
    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mConfigSpec:[I

    new-array p1, v2, [I

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    iput v4, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    iput p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    iput p3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    iput v3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    return-void
.end method


# virtual methods
.method public final chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10

    iget v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mConfigSpec:[I

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v7, 0x0

    aget v8, v0, v7

    if-lez v8, :cond_4

    new-array v9, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mConfigSpec:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v9

    move v5, v8

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v0, v9, v7

    const/16 v1, 0x3025

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib$1(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v1

    const/16 v2, 0x3026

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib$1(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v2

    iget v3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-lt v1, v3, :cond_0

    iget v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    if-lt v2, v1, :cond_0

    const/16 v1, 0x3024

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib$1(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v1

    const/16 v2, 0x3023

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib$1(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v2

    const/16 v3, 0x3022

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib$1(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3021

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib$1(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    iget v5, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    if-ne v1, v5, :cond_0

    iget v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    if-ne v2, v1, :cond_0

    iget v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    if-ne v3, v1, :cond_0

    iget v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    if-ne v4, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No config chosen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig#2 failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No configs match configSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mConfigSpec:[I

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v7, 0x0

    aget v8, v0, v7

    if-lez v8, :cond_a

    new-array v9, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mConfigSpec:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v9

    move v5, v8

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_2
    if-ge v7, v8, :cond_7

    aget-object v0, v9, v7

    const/16 v1, 0x3025

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v1

    const/16 v2, 0x3026

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v2

    iget v3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-lt v1, v3, :cond_6

    iget v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    if-lt v2, v1, :cond_6

    const/16 v1, 0x3024

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v1

    const/16 v2, 0x3023

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v2

    const/16 v3, 0x3022

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v3

    const/16 v4, 0x3021

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I

    move-result v4

    iget v5, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    if-ne v1, v5, :cond_6

    iget v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    if-ne v2, v1, :cond_6

    iget v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    if-ne v3, v1, :cond_6

    iget v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    if-ne v4, v1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No config chosen"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig#2 failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No configs match configSpec"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "eglChooseConfig failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 0

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    aget p0, p0, p2

    return p0

    :cond_0
    return p2
.end method

.method public findConfigAttrib$1(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 0

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    aget p0, p0, p2

    return p0

    :cond_0
    return p2
.end method
