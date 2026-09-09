.class public final Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;)Z
    .locals 2

    iget p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "target"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->previewProgressBar:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->previewRetryCount:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->previewRetryCount:I

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->iconIv:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "iconIv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    const p0, 0x7f13039b

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    :goto_0
    return p2

    :cond_3
    const-string p0, "previewProgressBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p1, "target"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;

    const/16 p2, 0xe

    invoke-direct {p1, p2, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Z
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string v0, "model"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "dataSource"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->previewProgressBar:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iput p3, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->previewRetryCount:I

    instance-of p0, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    :cond_1
    if-eqz v0, :cond_2

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    :cond_2
    :goto_0
    return p3

    :cond_3
    const-string p0, "previewProgressBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p0, "model"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "dataSource"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
