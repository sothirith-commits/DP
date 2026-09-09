.class public final synthetic Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;ZLjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;ZI)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "this$0"

    iget-boolean v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lcom/deepalhome/launcher/floating/CachedIcon;

    const-string p0, "$icon"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->INSTANCE:Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->remove(Ljava/io/File;)V

    const p0, 0x7f130248

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->refreshList()V

    goto :goto_0

    :cond_1
    const p0, 0x7f130245

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    :goto_0
    return-void

    :pswitch_0
    check-cast v3, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$imageUrl"

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->$r8$clinit:I

    invoke-virtual {v3, v2, v1}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->loadImage(Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    check-cast v3, Lcom/deepalhome/launcher/settings/SettingsFragment;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$badgeView"

    check-cast v2, Landroid/view/View;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v3, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    if-eqz p0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "aboutSettingsBtn"

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->aboutSettingsBtn:Landroid/widget/RadioButton;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, v3, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v5, v1, v4

    aget v4, v0, v4

    sub-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr p0, v4

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr p0, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    aget v0, v0, v4

    sub-int/2addr v1, v0

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070097

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    int-to-float p0, p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setX(F)V

    int-to-float p0, v0

    invoke-virtual {v2, p0}, Landroid/view/View;->setY(F)V

    :cond_3
    :goto_1
    return-void

    :pswitch_2
    check-cast v3, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$key"

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, v3, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->likeBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_2
    return-void

    :pswitch_3
    check-cast v2, Ljava/util/ArrayList;

    check-cast v3, Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v3, v2, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->$r8$lambda$dfSNxc8UtS3sQFHrx-PRvly7PSg(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/util/ArrayList;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
