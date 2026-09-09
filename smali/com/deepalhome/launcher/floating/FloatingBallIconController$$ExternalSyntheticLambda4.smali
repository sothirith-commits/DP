.class public final synthetic Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$4:Landroid/graphics/Bitmap;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/floating/FloatingBallIconController;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    iput p2, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$3:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$4:Landroid/graphics/Bitmap;

    iput p6, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    const-string v2, "$path"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->gifLoadToken:I

    iget v3, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$1:I

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingGifPath:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingGifSizePx:I

    iget-object v3, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->rootViewProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    sget-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->stopAnimatedDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$3:Landroid/graphics/drawable/Drawable;

    iput-object v4, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$4:Landroid/graphics/Bitmap;

    iput-object v5, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconPath:Ljava/lang/String;

    iget p0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda4;->f$5:I

    iput p0, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconSizePx:I

    iget-object p0, v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->iconViewProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    instance-of p0, v4, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p0, :cond_4

    move-object v2, v4

    check-cast v2, Landroid/graphics/drawable/AnimatedImageDrawable;

    :cond_4
    if-eqz v2, :cond_7

    const/4 p0, -0x1

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    if-eqz p0, :cond_7

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_0
    return-void
.end method
