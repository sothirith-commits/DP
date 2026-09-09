.class public final synthetic Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(IILandroid/app/Activity;Landroid/app/Dialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$0:I

    iput-object p5, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    iput p2, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$4:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/floating/CachedIcon;Ljava/lang/String;ILcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    iput p3, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$0:I

    iput-object p4, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    iput p5, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/floating/CachedIcon;

    const-string v1, "$icon"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;

    const-string v1, "this$0"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/floating/CachedIcon;->isGif()Z

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$0:I

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v0, v2, v1}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->loadAnimatedIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-nez v5, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->loadIcon(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    new-instance v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;

    iget v4, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$4:I

    const/4 v7, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/floating/FloatingBallIconController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;ILjava/lang/Object;Landroid/graphics/Bitmap;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    const-string v0, "$binding"

    iget-object v1, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$context"

    iget-object v2, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$0:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Object;

    check-cast v3, Landroid/app/Dialog;

    iget p0, p0, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;->f$4:I

    invoke-static {p0, v0, v2, v3, v1}, Lcom/deepalhome/launcher/util/DialogUtil;->adjustDialogContentHeights$shrinkIfNeeded(IILandroid/app/Activity;Landroid/app/Dialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
