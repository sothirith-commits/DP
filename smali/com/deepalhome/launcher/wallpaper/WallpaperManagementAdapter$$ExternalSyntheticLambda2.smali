.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

.field public final synthetic f$1:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$data"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->onPreviewClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$data"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->onDeleteClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$data"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementAdapter;->onSetClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
