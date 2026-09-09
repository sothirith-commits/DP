.class public final Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$attachPreviewTextureListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end method

.method public final native onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end method

.method public final native onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.end method

.method public final native onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end method
