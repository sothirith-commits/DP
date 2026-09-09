.class public final synthetic Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->$r8$clinit:I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    const/4 p1, 0x0

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->selectedFiles:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isImagePicker:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->returnSelectedFiles(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    iget-boolean v1, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isConfigImportMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->returnSelectedFiles(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isFloatBallMode:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importFloatBallIcons$1;

    invoke-direct {v5, v0, p0, p1}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importFloatBallIcons$1;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;

    invoke-direct {v5, v0, p0, p1}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_3
    iget-boolean p0, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isImagePicker:Z

    if-eqz p0, :cond_4

    const-string p0, "Please select an image"

    goto :goto_0

    :cond_4
    iget-boolean p0, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isConfigImportMode:Z

    if-eqz p0, :cond_5

    const-string p0, "Please select a config file"

    goto :goto_0

    :cond_5
    iget-boolean p0, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->isFloatBallMode:Z

    if-eqz p0, :cond_6

    const-string p0, "Please select an icon to import"

    goto :goto_0

    :cond_6
    const-string p0, "Please select a wallpaper to import"

    :goto_0
    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_7
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->$r8$clinit:I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method