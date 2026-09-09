.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

.field public final synthetic f$1:Lclub/deepal/launcher3/wallpaper/WallpaperItem;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Lclub/deepal/launcher3/wallpaper/WallpaperItem;I)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;->f$1:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$item"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;->f$1:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->loadPreview(Lclub/deepal/launcher3/wallpaper/WallpaperItem;Z)V

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$item"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;->f$1:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->loadPreview(Lclub/deepal/launcher3/wallpaper/WallpaperItem;Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
