.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;

    const-string v1, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    :pswitch_1
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
