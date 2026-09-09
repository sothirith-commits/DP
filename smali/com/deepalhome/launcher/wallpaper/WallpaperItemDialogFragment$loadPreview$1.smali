.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# instance fields
.field public final synthetic $forceNetwork:Z

.field public final synthetic $item:Ljava/io/Serializable;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$item:Ljava/io/Serializable;

    iput-boolean p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$forceNetwork:Z

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;ZLclub/deepal/launcher3/wallpaper/WallpaperItem;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->this$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$forceNetwork:Z

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$item:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;)Z
    .locals 4

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "target"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;

    iget p2, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->retryCount:I

    iget-object v0, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge p2, v1, :cond_0

    add-int/2addr p2, v2

    iput p2, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->retryCount:I

    new-instance p2, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$item:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$forceNetwork:Z

    const/4 v3, 0x3

    invoke-direct {p2, p1, v1, p0, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;ZI)V

    invoke-virtual {v0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const p0, 0x7f0800ec

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return v2

    :pswitch_0
    const-string p1, "target"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz p2, :cond_6

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$forceNetwork:Z

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$item:Ljava/io/Serializable;

    check-cast p0, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    if-nez p2, :cond_3

    iget p2, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->previewRetryCount:I

    const/4 v3, 0x1

    if-ge p2, v3, :cond_3

    add-int/2addr p2, v3

    iput p2, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->previewRetryCount:I

    iget-object p2, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p2, :cond_2

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Lclub/deepal/launcher3/wallpaper/WallpaperItem;I)V

    iget-object p0, p2, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object p2, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p2, :cond_5

    new-instance v1, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p1, p0}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p2, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f13039b

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return v0

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Z
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p0, "model"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "dataSource"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :pswitch_0
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p1, "model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "dataSource"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->previewRetryCount:I

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return p1

    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
