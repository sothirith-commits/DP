.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

.field public final synthetic f$1:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;II)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    iput p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$data"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->toggleSelection(Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;)V

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :pswitch_0
    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$data"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->toggleSelection(Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;)V

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
