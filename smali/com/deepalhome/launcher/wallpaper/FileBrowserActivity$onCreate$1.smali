.class public final Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/fragment/app/FragmentManager$1;

    const-string v0, "$this$addCallback"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->directoryStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1$1;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;)V

    iget-object p0, p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->directoryStack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$onCreate$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
