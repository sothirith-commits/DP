.class public final synthetic Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Storage permission is required to browse files"

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    const-string v3, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->$r8$clinit:I

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->loadRootDirectory()V

    goto :goto_0

    :cond_0
    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    sget p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->$r8$clinit:I

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->loadRootDirectory()V

    goto :goto_1

    :cond_1
    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
