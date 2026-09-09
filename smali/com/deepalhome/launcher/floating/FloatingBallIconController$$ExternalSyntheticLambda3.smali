.class public final synthetic Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Landroid/graphics/Bitmap;I)V
    .locals 0

    iput p5, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, v1, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->loadToken:I

    iget v2, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$1:I

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, v1, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p0, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p0, :cond_1

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$iconPath"

    iget-object v2, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->staticLoadToken:I

    iget v3, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$1:I

    if-eq v0, v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;->f$3:Landroid/graphics/Bitmap;

    iput-object p0, v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->iconViewProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p0, :cond_6

    if-eqz v1, :cond_7

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
