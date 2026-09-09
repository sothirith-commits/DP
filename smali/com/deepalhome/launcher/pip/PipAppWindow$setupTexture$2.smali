.class public final Lcom/deepalhome/launcher/pip/PipAppWindow$setupTexture$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$setupTexture$2;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/pip/PipAppWindow$setupTexture$2;->this$0:Ljava/lang/Object;

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
