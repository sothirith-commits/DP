.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setupRecyclerView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public final synthetic $spanCount:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setupRecyclerView$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setupRecyclerView$1;->$spanCount:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setupRecyclerView$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->adapter:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemViewType(I)I

    move-result p1

    sget-object v0, Lcom/chad/library/adapter4/BaseQuickAdapter;->Companion:Lcom/chad/library/adapter4/BaseQuickAdapter$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/chad/library/adapter4/BaseQuickAdapter;->EMPTY_VIEW:I

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setupRecyclerView$1;->$spanCount:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
