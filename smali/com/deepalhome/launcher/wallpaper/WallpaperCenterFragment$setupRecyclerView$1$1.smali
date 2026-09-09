.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$1$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$1$1;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$1$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$1$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/app/FunctionListAdapter;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->getGridSpan(I)I

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$setupRecyclerView$1$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/chad/library/adapter4/BaseQuickAdapter;->Companion:Lcom/chad/library/adapter4/BaseQuickAdapter$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/chad/library/adapter4/BaseQuickAdapter;->EMPTY_VIEW:I

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperCenterItemAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x4

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
