.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;
.super Lcom/deepalhome/launcher/base/BaseDialogFragment;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;


# instance fields
.field public applyBtn:Lcom/google/android/material/button/MaterialButton;

.field public cardView:Lcom/google/android/material/card/MaterialCardView;

.field public downloadBtn:Lcom/google/android/material/button/MaterialButton;

.field public downloadProgressBar:Landroid/widget/ProgressBar;

.field public downloadedLibraryFile:Ljava/io/File;

.field public fileName:Ljava/lang/String;

.field public fileSize:J

.field public fileType:Ljava/lang/String;

.field public gifBadge:Landroid/widget/TextView;

.field public iconIv:Landroid/widget/ImageView;

.field public iconNameTv:Landroid/widget/TextView;

.field public imageUrl:Ljava/lang/String;

.field public isApplying:Z

.field public isDownloading:Z

.field public previewProgressBar:Landroid/view/View;

.field public previewRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e005a

    invoke-direct {p0, v0}, Landroidx/fragment/app/DialogFragment;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->imageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final humanReadableByteCountBin(J)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const v2, 0x7f1301ce

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v4, 0x400

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1301cb

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v4, Ljava/text/StringCharacterIterator;

    const-string v5, "KMGTPE"

    invoke-direct {v4, v5}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x28

    move-wide v6, v0

    :goto_1
    if-ltz v5, :cond_3

    const-wide v8, 0xfffccccccccccccL

    shr-long/2addr v8, v5

    cmp-long v8, v0, v8

    if-lez v8, :cond_3

    const/16 v8, 0xa

    shr-long/2addr v6, v8

    invoke-interface {v4}, Ljava/text/CharacterIterator;->next()C

    add-int/lit8 v5, v5, -0xa

    goto :goto_1

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    move-result p1

    int-to-long p1, p1

    mul-long/2addr v6, p1

    invoke-interface {v4}, Ljava/text/CharacterIterator;->current()C

    move-result p1

    const/16 p2, 0x4b

    if-ne p1, p2, :cond_4

    const p1, 0x7f1301d1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/16 p2, 0x4d

    if-ne p1, p2, :cond_5

    const p1, 0x7f1301d2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const/16 p2, 0x47

    if-ne p1, p2, :cond_6

    const p1, 0x7f1301d0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    const/16 p2, 0x54

    if-ne p1, p2, :cond_7

    const p1, 0x7f1301d4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const/16 p2, 0x50

    if-ne p1, p2, :cond_8

    const p1, 0x7f1301d3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    const/16 p2, 0x45

    if-ne p1, p2, :cond_9

    const p1, 0x7f1301cf

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const p2, 0x7f1301cd

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    long-to-double v0, v6

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final importToLibrary(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;->withoutStoragePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p0}, Lkotlin/text/StringsKt__StringsKt;->substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "icon_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, ""

    const/16 v3, 0x2e

    invoke-static {p0, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->isSupportedExtension(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p0

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->generateUniqueFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x2000

    :try_start_1
    invoke-static {p2, v0, v1}, Lokio/Okio;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p2, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-static {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {p2, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final loadPreview()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "previewProgressBar"

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->previewProgressBar:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->previewProgressBar:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy$1;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$FitCenter;

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->scaleOnlyTransform(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {v3, v2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v3

    iget-object v3, v3, Lcom/bumptech/glide/Glide;->requestManagerRetriever:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v2, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->iconIv:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    return-void

    :cond_2
    const-string p0, "iconIv"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string p2, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p2, 0x7f0b00f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(...)"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->cardView:Lcom/google/android/material/card/MaterialCardView;

    const p2, 0x7f0b02e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->iconIv:Landroid/widget/ImageView;

    const p2, 0x7f0b0457

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->previewProgressBar:Landroid/view/View;

    const p2, 0x7f0b0256

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->gifBadge:Landroid/widget/TextView;

    const p2, 0x7f0b02e8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->iconNameTv:Landroid/widget/TextView;

    const p2, 0x7f0b01a2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0b01a4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadProgressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f0b0096

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->applyBtn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "image_url"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->imageUrl:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "file_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    if-nez p1, :cond_3

    move-object p1, v0

    :cond_3
    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v1, "file_type"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, p2

    :goto_2
    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, p1

    :goto_3
    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileType:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_6

    const-string v2, "file_size"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_6
    iput-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileSize:J

    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_7
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06038f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->cardView:Lcom/google/android/material/card/MaterialCardView;

    const-string v0, "cardView"

    if-eqz p1, :cond_1c

    new-instance v1, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_b

    const v2, 0x7f060026

    goto :goto_4

    :cond_b
    const v2, 0x7f060023

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_c

    const p1, 0x7f06038c

    goto :goto_5

    :cond_c
    const p1, 0x7f06038b

    :goto_5
    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->cardView:Lcom/google/android/material/card/MaterialCardView;

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v1}, Lcom/google/android/material/card/MaterialCardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->iconNameTv:Landroid/widget/TextView;

    const-string v1, "iconNameTv"

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->iconNameTv:Landroid/widget/TextView;

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "icon"

    :cond_d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileType:Ljava/lang/String;

    const-string v0, "gif"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->gifBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_e

    move p1, v1

    goto :goto_6

    :cond_e
    move p1, v2

    :goto_6
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/deepalhome/launcher/floating/FloatBallIconDownloadCache;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatBallIconDownloadCache;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p1

    const-string v3, "float_ball_icon_download_cache"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    :goto_7
    move-object v4, p2

    goto :goto_8

    :cond_f
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_7

    :goto_8
    const-string p1, "downloadBtn"

    const-string v0, "applyBtn"

    if-eqz v4, :cond_13

    iput-object v4, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadedLibraryFile:Ljava/io/File;

    sget-object v3, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->INSTANCE:Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;

    iget-object v5, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->save(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_12

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->applyBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_13
    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_17

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->applyBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_16

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->resetDownloadBtn()V

    :goto_9
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->loadPreview()V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_15

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->applyBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_14

    new-instance p2, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_15
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_17
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_18
    const-string p0, "gifBadge"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_1a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_1b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    :cond_1c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public final resetDownloadBtn()V
    .locals 5

    iget-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->humanReadableByteCountBin(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "downloadBtn"

    if-eqz v1, :cond_6

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0x7f1301a5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    :goto_1
    const v0, 0x7f13019d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    const-string p0, "downloadProgressBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
