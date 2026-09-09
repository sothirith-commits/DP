.class public final Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $selectedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->$selectedFiles:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->$selectedFiles:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperImporter;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperImporter;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->$selectedFiles:Ljava/util/List;

    iput v2, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->label:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/WallpaperImporter$importFromFiles$2;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperImporter$importFromFiles$2;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperImporter$ImportResult;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    sget v1, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperImporter$ImportResult;->success:I

    iget v1, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperImporter$ImportResult;->skipped:I

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    const-string p1, "Import failed"

    goto :goto_2

    :cond_3
    const-string v3, " duplicate wallpapers"

    if-nez v0, :cond_4

    if-lez v1, :cond_4

    const-string p1, "Skipped "

    invoke-static {v1, p1, v3}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string v4, " wallpapers"

    const-string v5, "Successfully imported "

    iget p1, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperImporter$ImportResult;->failed:I

    if-nez p1, :cond_5

    if-nez v1, :cond_5

    invoke-static {v0, v5, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string v6, " open"

    const-string v7, ", failed "

    if-lez v1, :cond_7

    if-lez p1, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-static {v0, v5, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", skipped "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$importSelectedFiles$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method