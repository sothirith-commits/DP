.class public final Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

.field final synthetic $iconMaxSize:I

.field final synthetic $iconPath:Ljava/lang/String;

.field final synthetic $iconView:Landroid/widget/ImageView;

.field final synthetic $requestToken:I

.field final synthetic this$0:Lcom/deepalhome/launcher/floating/FloatingBallIconController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/floating/FloatingBallIconController;ILjava/lang/String;ILcom/deepalhome/launcher/floating/GifTextureView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->this$0:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    iput p2, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$requestToken:I

    iput-object p3, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$iconPath:Ljava/lang/String;

    iput p4, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$iconMaxSize:I

    iput-object p5, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

    iput-object p6, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$iconView:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->this$0:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    iget v1, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->textureGifLoadToken:I

    iget v2, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$requestToken:I

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifPath:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifSizePx:I

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$iconPath:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->this$0:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$iconPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconPath:Ljava/lang/String;

    iget p0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$iconMaxSize:I

    iput p0, p1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconSizePx:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/GifTextureView;->getHasDrawable()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->this$0:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    iput-object v1, p1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconPath:Ljava/lang/String;

    iput v2, p1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconSizePx:I

    iget-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/floating/GifTextureView;->stopRendering()V

    iget-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$iconView:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->$iconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
