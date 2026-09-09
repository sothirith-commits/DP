.class public final Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public adapter:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

.field public allowMultiple:Z

.field public allowedExtensions:Ljava/util/Set;

.field public backBtn:Lcom/google/android/material/button/MaterialButton;

.field public bottomActionContainer:Landroid/view/View;

.field public browseMode:Ljava/lang/String;

.field public confirmBtn:Lcom/google/android/material/button/MaterialButton;

.field public directoryPath:Landroid/widget/TextView;

.field public isConfigImportMode:Z

.field public isFloatBallMode:Z

.field public isImagePicker:Z

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final requestManageExternalStorageLauncher:Landroidx/activity/result/ActivityResultRegistry$2;

.field public final supportedConfigExtensions:Ljava/util/Set;

.field public final supportedExtensions:Ljava/util/LinkedHashSet;

.field public final supportedFloatBallExtensions:Ljava/util/Set;

.field public final supportedImageExtensions:Ljava/util/Set;

.field public final supportedVideoExtensions:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "wallpaper"

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->browseMode:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->allowMultiple:Z

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->allowedExtensions:Ljava/util/Set;

    const-string v5, "gif"

    const-string v6, "bmp"

    const-string v1, "jpg"

    const-string v2, "jpeg"

    const-string v3, "png"

    const-string v4, "webp"

    const-string v7, "heic"

    const-string v8, "heif"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->supportedImageExtensions:Ljava/util/Set;

    const-string v1, "mov"

    const-string v2, "mp4"

    const-string v3, "m4v"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->supportedVideoExtensions:Ljava/util/Set;

    const-string v4, "png"

    const-string v5, "webp"

    const-string v2, "jpg"

    const-string v3, "jpeg"

    const-string v6, "gif"

    const-string v7, "bmp"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->supportedFloatBallExtensions:Ljava/util/Set;

    const-string v2, "json"

    const-string v3, "zip"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->supportedConfigExtensions:Ljava/util/Set;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->supportedExtensions:Ljava/util/LinkedHashSet;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activity_rq#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/activity/ComponentActivity;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/ComponentActivity$1;

    invoke-virtual {v4, v2, p0, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultRegistry$2;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/activity/ComponentActivity;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/ComponentActivity$1;

    invoke-virtual {v3, v2, p0, v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultRegistry$2;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->requestManageExternalStorageLauncher:Landroidx/activity/result/ActivityResultRegistry$2;

    return-void
.end method


# virtual methods
.method public final loadDirectory(Ljava/io/File;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "Unable to access this directory"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v2, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    new-array v4, v4, [Lkotlin/jvm/functions/Function1;

    sget-object v5, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$2;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$2;

    aput-object v5, v4, v1

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$3;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$loadDirectory$files$3;

    aput-object v1, v4, v0

    invoke-static {v4}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda7;

    move-result-object v1

    array-length v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "copyOf(...)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v4, v2

    if-le v4, v0, :cond_2

    invoke-static {v2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_2
    :goto_0
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    if-eqz v1, :cond_7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->files:Ljava/util/List;

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->directoryStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->directoryPath:Landroid/widget/TextView;

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const-string p0, "directoryPath"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_2
    return-void
.end method

.method public final loadRootDirectory()V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->directoryStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->loadDirectory(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string v0, "Unable to access external storage"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "file_browser_mode"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "wallpaper"

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->browseMode:Ljava/lang/String;

    const-string v2, "image_picker"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isImagePicker:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->browseMode:Ljava/lang/String;

    const-string v3, "float_ball"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isFloatBallMode:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->browseMode:Ljava/lang/String;

    const-string v4, "config_import"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isConfigImportMode:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-boolean v5, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isImagePicker:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isConfigImportMode:Z

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    const-string v6, "file_browser_allow_multiple"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->allowMultiple:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->browseMode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->supportedImageExtensions:Ljava/util/Set;

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "static_wallpaper"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->supportedConfigExtensions:Ljava/util/Set;

    goto :goto_2

    :sswitch_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->supportedFloatBallExtensions:Ljava/util/Set;

    goto :goto_2

    :sswitch_4
    const-string v2, "video_only"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_1
    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->supportedExtensions:Ljava/util/LinkedHashSet;

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->supportedVideoExtensions:Ljava/util/Set;

    :cond_5
    :goto_2
    iput-object v6, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->allowedExtensions:Ljava/util/Set;

    const p1, 0x7f0e0021

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    sget-object p1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyAllBarVisibility(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/app/Activity;)V

    const p1, 0x7f0b04a6

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0b00a9

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->backBtn:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0b0129

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->confirmBtn:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f0b0188

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->directoryPath:Landroid/widget/TextView;

    const p1, 0x7f0b00bf

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->bottomActionContainer:Landroid/view/View;

    new-instance v2, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;-><init>(I)V

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->bottomActionContainer:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->backBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_b

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->confirmBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_a

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->allowedExtensions:Ljava/util/Set;

    iget-boolean v3, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->allowMultiple:Z

    new-instance v4, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$setupRecyclerView$1;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$setupRecyclerView$1;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;)V

    invoke-direct {p1, v0, v3, v4}, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;-><init>(Ljava/util/Set;ZLcom/deepalhome/launcher/wallpaper/FileBrowserActivity$setupRecyclerView$1;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "recyclerView"

    if-eqz p1, :cond_9

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->updateConfirmButton()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    const-string v0, "<get-onBackPressedDispatcher>(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;)V

    new-instance v2, Landroidx/fragment/app/FragmentManager$1;

    invoke-direct {v2, v1, v0}, Landroidx/fragment/app/FragmentManager$1;-><init>(ZLcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1;)V

    invoke-virtual {p1, p0, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentManager$1;)V

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->loadRootDirectory()V

    goto :goto_3

    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->requestManageExternalStorageLauncher:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    :goto_3
    return-void

    :cond_7
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a
    const-string p0, "confirmBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_b
    const-string p0, "backBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_c
    const-string p0, "bottomActionContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x6070a710 -> :sswitch_4
        -0x3ca449fe -> :sswitch_3
        -0x2749e0be -> :sswitch_2
        0x26f52ff2 -> :sswitch_1
        0x6fd02571 -> :sswitch_0
    .end sparse-switch
.end method

.method public final returnSelectedFiles(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "file_browser_selected_paths"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "file_browser_selected_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final updateConfirmButton()V
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->selectedFiles:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->confirmBtn:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "confirmBtn"

    if-eqz v2, :cond_6

    iget-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isImagePicker:Z

    const-string v5, "Select"

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isConfigImportMode:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isFloatBallMode:Z

    const-string v5, "Import"

    const/16 v6, 0x29

    const-string v7, "Import ("

    if-eqz v4, :cond_2

    if-lez v0, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->confirmBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz p0, :cond_5

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
