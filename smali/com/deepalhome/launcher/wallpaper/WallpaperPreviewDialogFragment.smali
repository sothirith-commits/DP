.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;
.super Lcom/deepalhome/launcher/base/BaseDialogFragment;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$Companion;


# instance fields
.field public binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0118

    invoke-direct {p0, v0}, Landroidx/fragment/app/DialogFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 p2, 0x1

    const/4 v0, 0x0

    const-string v1, "view"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget v1, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->$r8$clinit:I

    sget-object v1, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v2, 0x7f0e0118

    invoke-virtual {v1, p1, v2}, Landroidx/databinding/MergedDataBinderMapper;->getDataBinder(Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    const-string v1, "bind(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "KEY_PATH"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    :cond_2
    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isVideoFile(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x8

    const-string v4, "binding"

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz v2, :cond_5

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz p1, :cond_4

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz p1, :cond_3

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz v2, :cond_10

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz p1, :cond_d

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->previewIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;

    if-eqz p1, :cond_c

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperPreviewDialogBinding;->root:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_9
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06038f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setLayout(II)V

    :cond_b
    return-void

    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
