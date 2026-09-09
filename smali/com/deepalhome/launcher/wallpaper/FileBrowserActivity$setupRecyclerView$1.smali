.class public final Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$setupRecyclerView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$setupRecyclerView$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/io/File;

    const-string v0, "file"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$setupRecyclerView$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    sget v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->loadDirectory(Ljava/io/File;)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$setupRecyclerView$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->adapter:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->selectedFiles:Ljava/util/LinkedHashSet;

    iget-boolean v2, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->allowMultiple:Z

    if-nez v2, :cond_3

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    if-nez v2, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    new-instance v1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->files:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v2, p1, v3, v0}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$setupRecyclerView$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->updateConfirmButton()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_7
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
