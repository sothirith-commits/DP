.class public Lcom/luck/picture/lib/PictureSelectorSystemFragment;
.super Lcom/luck/picture/lib/basic/PictureCommonFragment;
.source "SourceFile"


# instance fields
.field public mContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public mContentsLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public mDocMultipleLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public mDocSingleLauncher:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResourceId()I
    .locals 0

    const p0, 0x7f0e00d7

    return p0
.end method

.method public final handlePermissionSettingResult([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent()V

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckReadStorage(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->openSystemAlbum()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1303b7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    sput-object p0, Lcom/luck/picture/lib/permissions/PermissionConfig;->CURRENT_REQUEST_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onDestroy()V

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocMultipleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocSingleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_2
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    :cond_3
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-nez p1, :cond_0

    new-instance p1, Lcom/luck/picture/lib/PictureSelectorSystemFragment$3;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$3;-><init>(I)V

    new-instance p2, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;I)V

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocSingleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/luck/picture/lib/PictureSelectorSystemFragment$3;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$3;-><init>(I)V

    new-instance p2, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;I)V

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-nez p1, :cond_2

    new-instance p1, Lcom/luck/picture/lib/PictureSelectorSystemFragment$3;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$3;-><init>(I)V

    new-instance p2, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;I)V

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocMultipleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/luck/picture/lib/PictureSelectorSystemFragment$3;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$3;-><init>(I)V

    new-instance p2, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorSystemFragment;I)V

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckReadStorage(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->openSystemAlbum()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {p1, p2}, Lcom/luck/picture/lib/permissions/PermissionConfig;->getReadPermissionArray(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent()V

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/luck/picture/lib/permissions/PermissionChecker;->getInstance()Lcom/luck/picture/lib/permissions/PermissionChecker;

    move-result-object p2

    new-instance v0, Landroidx/cardview/widget/CardView$1;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0, p1}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/luck/picture/lib/permissions/PermissionResultCallback;)V

    :goto_1
    return-void
.end method

.method public final openSystemAlbum()V
    .locals 9

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent()V

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const-string v2, "image/*"

    const-string v3, "audio/*"

    const/4 v4, 0x3

    const-string v5, "video/*"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "image/*,video/*"

    if-ne v1, v7, :cond_3

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocSingleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v8}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-ne v0, v6, :cond_1

    move-object v2, v5

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    move-object v2, v3

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mDocMultipleLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v8}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorSystemFragment;->mContentsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-ne v0, v6, :cond_5

    move-object v2, v5

    goto :goto_1

    :cond_5
    if-ne v0, v4, :cond_6

    move-object v2, v3

    :cond_6
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
