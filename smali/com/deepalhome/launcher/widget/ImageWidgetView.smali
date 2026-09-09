.class public final Lcom/deepalhome/launcher/widget/ImageWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/WidgetMoreMenuProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/WidgetMoreMenuProvider;"
    }
.end annotation


# instance fields
.field private imagePath:Ljava/lang/String;

.field private isNightMode:Z

.field private onResizeRequest:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private onSelectImageRequest:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/ImageWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$showPlaceholder(Lcom/deepalhome/launcher/widget/ImageWidgetView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->showPlaceholder()V

    return-void
.end method

.method private final hasValidImage()Z
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->imagePath:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isVideoFile(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final renderContent()V
    .locals 2

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->hasValidImage()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->imagePath:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->showImage(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->showPlaceholder()V

    :goto_0
    return-void
.end method

.method private final resolvePlaceholderText()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f130258

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f130260

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13025f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method private final showImage(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->imageIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->placeholderContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView$showImage$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->imageIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    return-void
.end method

.method private final showPlaceholder()V
    .locals 2

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->imageIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->imageIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->imageIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->placeholderContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->placeholderTextTv:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->resolvePlaceholderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->updatePlaceholderStyle()V

    return-void
.end method

.method private final updatePlaceholderStyle()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f060027

    goto :goto_0

    :cond_0
    const v1, 0x7f060024

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->isNightMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f060099

    goto :goto_1

    :cond_1
    const v2, 0x7f060098

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->isNightMode:Z

    if-eqz v3, :cond_2

    const v3, 0x7f06038c

    goto :goto_2

    :cond_2
    const v3, 0x7f06038b

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->placeholderContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->placeholderIconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->placeholderTextTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final bindWidgetInfo(Lcom/deepalhome/launcher/widget/WidgetInfo;)V
    .locals 2

    const-string v0, "widgetInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget-object p1, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;->data:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move-object v1, p1

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->imagePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->renderContent()V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e006a

    return p0
.end method

.method public getMoreMenuActions()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    iget-object v0, v0, Lcom/deepalhome/launcher/widget/WidgetInfo;->location:Lcom/deepalhome/launcher/widget/WidgetLocation;

    iget v1, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    sget-object v2, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->Companion:Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->ALL:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    iget v6, v5, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->width:I

    if-ne v6, v1, :cond_1

    iget v5, v5, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->height:I

    if-ne v5, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;

    new-instance v9, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "image_widget_resize_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/deepalhome/launcher/widget/ImageWidgetView$getMoreMenuActions$sizeActions$1$1;

    invoke-direct {v7, p0, v1}, Lcom/deepalhome/launcher/widget/ImageWidgetView$getMoreMenuActions$sizeActions$1$1;-><init>(Lcom/deepalhome/launcher/widget/ImageWidgetView;Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;)V

    const v5, 0x7f080157

    const/4 v6, 0x0

    iget-object v4, v1, Lcom/deepalhome/launcher/widget/ImageWidgetSizePreset;->label:Ljava/lang/String;

    const/16 v8, 0x18

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_4
    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1304e1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string p0, "getString(...)"

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v9, 0x7f080157

    const/4 v11, 0x0

    const-string v7, "image_widget_resize"

    const/16 v12, 0x28

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lkotlin/jvm/functions/Function0;I)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getOnResizeRequest()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->onResizeRequest:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnSelectImageRequest()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->onSelectImageRequest:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->renderContent()V

    :cond_0
    return-void
.end method

.method public onClicked()V
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->onSelectImageRequest:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->imageIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInit()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->contentContainer:Lcom/deepalhome/launcher/view/RoundedFrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->setCornerRadius(F)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->updatePlaceholderStyle()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->renderContent()V

    return-void
.end method

.method public final setOnResizeRequest(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->onResizeRequest:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSelectImageRequest(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->onSelectImageRequest:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public updateUIMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/ImageWidgetView;->isNightMode:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->updatePlaceholderStyle()V

    return-void
.end method
