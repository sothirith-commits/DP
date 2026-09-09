.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    const-string v0, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "action_delete_selected"

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->sendControlAction(Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "action_toggle_select_all"

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->sendControlAction(Ljava/lang/String;)V

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "action_exit_multi_select"

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->sendControlAction(Ljava/lang/String;)V

    return-void

    :pswitch_2
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "action_enter_multi_select"

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->sendControlAction(Ljava/lang/String;)V

    return-void

    :pswitch_3
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->hideLanTransferPanel()V

    return-void

    :pswitch_4
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->hideLanTransferPanel()V

    return-void

    :pswitch_5
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/util/StoragePermissionUtils;->INSTANCE:Lcom/deepalhome/launcher/util/StoragePermissionUtils;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;

    invoke-direct {v0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V

    const v1, 0x7f130481

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/util/StoragePermissionUtils;->requestStoragePermission(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_6
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->Companion:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;->getALL()Ljava/util/List;

    move-result-object p0

    iget-object v0, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->getTabType()Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "file_browser_mode"

    const-string v1, "float_ball"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$launchLocalImport$2;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$launchLocalImport$2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->scanDownloadVideos(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$launchLocalImport$1;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$launchLocalImport$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->scanDownloadVideos(Lkotlin/jvm/functions/Function0;)V

    :goto_1
    return-void

    :cond_5
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "action_export_selected"

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->sendControlAction(Ljava/lang/String;)V

    return-void

    :pswitch_8
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
