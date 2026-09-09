.class public final Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$SimpleEGLConfigChooser;
.super Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;
.source "SourceFile"


# instance fields
.field public final this$0:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;Z)V
    .locals 1

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$SimpleEGLConfigChooser;->this$0:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0, p2}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;II)V

    return-void
.end method
