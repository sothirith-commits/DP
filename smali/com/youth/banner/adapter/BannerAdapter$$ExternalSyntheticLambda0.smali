.class public final synthetic Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/chad/library/adapter4/BaseQuickAdapter;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v3, "$device"

    const-string v4, "getContext(...)"

    const-string v5, "$file"

    const-string v6, "getString(...)"

    const-string v7, "binding"

    const/4 v8, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v12, "$item"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v15, "this$0"

    iget-object v2, v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v9, v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget v0, v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast v9, Lcom/deepalhome/launcher/window/WindowsView;

    check-cast v2, Lcom/deepalhome/launcher/window/WindowView;

    invoke-static {v9, v2, v1}, Lcom/deepalhome/launcher/window/WindowsView;->$r8$lambda$_BIVSccwg0RVymJbqR9Jf8wj0bg(Lcom/deepalhome/launcher/window/WindowsView;Lcom/deepalhome/launcher/window/WindowView;Landroid/view/View;)V

    return-void

    :pswitch_0
    sget v0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->$r8$clinit:I

    check-cast v9, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lcom/deepalhome/launcher/app/App;

    const-string v0, "$app"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/AppUtil;->start(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    check-cast v9, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lcom/deepalhome/launcher/widget/ImageWidgetPickerEntry;

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;->onSelected:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    sget v0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->$r8$clinit:I

    check-cast v9, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;

    const-string v0, "$modeItem"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;->mode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    iput-object v0, v9, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-virtual {v9}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->refreshModeStates()V

    sget-object v1, Lcom/deepalhome/launcher/hvac/HvacController;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacController;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;->INSTANCE:Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;->toCommandMode(Lcom/deepalhome/launcher/navigation/AirConditionMode;)Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-static {v1, v2, v11, v10, v11}, Lcom/deepalhome/launcher/hvac/HvacController;->execute$default(Lcom/deepalhome/launcher/hvac/HvacController;Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v11, v9, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-virtual {v9}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->refreshModeStates()V

    :cond_2
    :goto_1
    return-void

    :pswitch_3
    check-cast v9, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "this$1"

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-eq v0, v8, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, v2, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :pswitch_4
    check-cast v9, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput v14, v9, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->previewRetryCount:I

    iget-object v0, v9, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9, v2, v13}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$loadPreview$1$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Lclub/deepal/launcher3/wallpaper/WallpaperItem;I)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_5
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :pswitch_5
    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->$r8$clinit:I

    check-cast v9, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$resetDownloadBtn$1$1;

    check-cast v2, Lcom/liulishuo/okdownload/DownloadTask;

    invoke-direct {v0, v9, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$resetDownloadBtn$1$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Lcom/liulishuo/okdownload/DownloadTask;)V

    sget-object v1, Lcom/deepalhome/launcher/util/StoragePermissionUtils;->INSTANCE:Lcom/deepalhome/launcher/util/StoragePermissionUtils;

    const v2, 0x7f1301a3

    invoke-virtual {v9, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/deepalhome/launcher/util/StoragePermissionUtils;->requestStoragePermission(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void

    :pswitch_6
    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->$r8$clinit:I

    check-cast v9, Ljava/io/File;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;Ljava/lang/String;)V

    const v0, 0x7f130436

    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_7
    check-cast v9, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lcom/deepalhome/launcher/wallpaper/FloatBallItem;

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_8
    check-cast v9, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Ljava/io/File;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_9
    const-string v0, "$textureView"

    check-cast v9, Landroid/view/TextureView;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$dismissRunnable"

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_a
    sget v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->$r8$clinit:I

    check-cast v9, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$key"

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/settings/ActionPickerMode;->FLOATING_BALL:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    new-instance v4, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallGestureItems$1$1$1;

    invoke-direct {v4, v2, v9}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallGestureItems$1$1$1;-><init>(Ljava/lang/String;Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/settings/ActionPickerMode;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->show()V

    return-void

    :pswitch_b
    sget v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    check-cast v9, Lcom/deepalhome/launcher/settings/BleSettingsView;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lcom/deepalhome/tuotuotie/BleDevice;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/settings/BleSettingsView$createDeepalDeviceCard$2$1;->INSTANCE:Lcom/deepalhome/launcher/settings/BleSettingsView$createDeepalDeviceCard$2$1;

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;-><init>(Landroid/content/Context;Lcom/deepalhome/tuotuotie/BleDevice;Lcom/deepalhome/launcher/settings/BleSettingsView$createDeepalDeviceCard$2$1;)V

    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3, v14}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->$r8$clinit:I

    sget-object v3, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v3, 0x7f0e002e

    invoke-static {v1, v3, v11, v14, v11}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    const-string v3, "inflate(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->dialog:Landroid/app/Dialog;

    const-string v4, "dialog"

    if-eqz v3, :cond_2c

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->dialog:Landroid/app/Dialog;

    if-eqz v3, :cond_2b

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v5, :cond_2a

    const-string v6, "titleEditEt"

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleEditEt:Landroid/widget/EditText;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v6, :cond_29

    const-string v8, "dialogRootCard"

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->dialogRootCard:Landroidx/cardview/widget/CardView;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$show$1;

    invoke-direct {v8, v0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$show$1;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V

    const-wide/16 v24, 0x0

    const/16 v29, 0x2f8

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v27, v8

    invoke-direct/range {v17 .. v29}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;-><init>(Landroid/app/Dialog;Landroid/widget/EditText;Landroid/view/View;Ljava/util/List;ZZJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->titleInputInteraction:Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->bind()V

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v1, :cond_28

    iget-object v3, v2, Lcom/deepalhome/tuotuotie/BleDevice;->nickname:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    iget-object v3, v2, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    :cond_6
    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v1, :cond_27

    new-instance v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v14}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;I)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->editNameBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v1, :cond_26

    new-instance v2, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;

    invoke-direct {v2, v13, v0}, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleEditEt:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->tabMap:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/deepalhome/tuotuotie/EventType;->CLICK:Lcom/deepalhome/tuotuotie/EventType;

    new-instance v3, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v5, :cond_25

    const-string v6, "tabClick"

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabClick:Landroid/widget/TextView;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v6, :cond_24

    const-string v8, "tabClickIndicator"

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabClickIndicator:Landroid/view/View;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v5, v6}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;-><init>(Landroid/widget/TextView;Landroid/view/View;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/deepalhome/tuotuotie/EventType;->DOUBLE_CLICK:Lcom/deepalhome/tuotuotie/EventType;

    new-instance v3, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v5, :cond_23

    const-string v6, "tabDoubleClick"

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabDoubleClick:Landroid/widget/TextView;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v6, :cond_22

    const-string v8, "tabDoubleClickIndicator"

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabDoubleClickIndicator:Landroid/view/View;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v5, v6}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;-><init>(Landroid/widget/TextView;Landroid/view/View;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/deepalhome/tuotuotie/EventType;->ROTATE_CW:Lcom/deepalhome/tuotuotie/EventType;

    new-instance v3, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v5, :cond_21

    const-string v6, "tabRotate"

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabRotate:Landroid/widget/TextView;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v6, :cond_20

    const-string v8, "tabRotateIndicator"

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabRotateIndicator:Landroid/view/View;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v5, v6}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;-><init>(Landroid/widget/TextView;Landroid/view/View;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/deepalhome/tuotuotie/EventType;->LONG_PRESS:Lcom/deepalhome/tuotuotie/EventType;

    new-instance v3, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v5, :cond_1f

    const-string v6, "tabLongPress"

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabLongPress:Landroid/widget/TextView;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v6, :cond_1e

    const-string v8, "tabLongPressIndicator"

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabLongPressIndicator:Landroid/view/View;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v5, v6}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;-><init>(Landroid/widget/TextView;Landroid/view/View;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_1d

    new-instance v3, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v13}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;I)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabClickContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_1c

    new-instance v3, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v10}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;I)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabDoubleClickContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_1b

    new-instance v3, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v3, v0, v5}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;I)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabRotateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_1a

    new-instance v3, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;

    const/4 v5, 0x4

    invoke-direct {v3, v0, v5}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;I)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->tabLongPressContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_19

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->bgColor$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->dialogRootCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getTextColor()I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->backBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_17

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->editNameBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getHintColor()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleEditEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_14

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleEditEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getHintColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_13

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->editTextBg$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->titleEditEt:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_12

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->currentActionLabelTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getHintColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->currentActionTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v2, :cond_10

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->longPressHintTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getHintColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;

    iget-object v3, v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getTextColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->mainColor$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v2, v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;->indicator:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v1, :cond_f

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->rightGridRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v1, :cond_e

    new-instance v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;I)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->clearActionBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v1, :cond_d

    new-instance v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;I)V

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->backBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/deepalhome/tuotuotie/EventType;->CLICK:Lcom/deepalhome/tuotuotie/EventType;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->switchTab(Lcom/deepalhome/tuotuotie/EventType;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f06038f

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    div-int/2addr v2, v10

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    :cond_8
    sget-object v1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->titleInputInteraction:Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->onDialogShown()V

    return-void

    :cond_9
    const-string v0, "titleInputInteraction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_d
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_e
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_f
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_10
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_11
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_12
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_13
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_14
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_15
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_16
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_17
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_18
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_19
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_1a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_1b
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_1c
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_1d
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_1e
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_1f
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_20
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_21
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_22
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_23
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_24
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_25
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_26
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_27
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_28
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_29
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_2a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_2b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :cond_2c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v11

    :pswitch_c
    sget v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    check-cast v9, Lcom/deepalhome/launcher/settings/BleSettingsView;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lcom/deepalhome/mitemp/MiTempDevice;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v11, v14}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v1, v2, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    if-nez v1, :cond_2d

    const-string v1, ""

    :cond_2d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f130313

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v3

    if-eqz v3, :cond_2e

    const v3, 0x7f06038c

    goto :goto_3

    :cond_2e
    const v3, 0x7f06038b

    :goto_3
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v3

    if-eqz v3, :cond_2f

    const v3, 0x7f06038a

    goto :goto_4

    :cond_2f
    const v3, 0x7f060389

    :goto_4
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    if-eqz v1, :cond_30

    const v1, 0x7f0800ba

    goto :goto_5

    :cond_30
    const v1, 0x7f0800b9

    :goto_5
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v3, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;

    move-object/from16 v25, v3

    invoke-direct {v3, v2, v9, v0, v1}, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$submitRename$1;-><init>(Lcom/deepalhome/mitemp/MiTempDevice;Lcom/deepalhome/launcher/settings/BleSettingsView;Landroidx/appcompat/widget/AppCompatEditText;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v2, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;

    invoke-direct {v2, v14, v3}, Lcom/deepalhome/launcher/settings/BleSettingsView$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    sget-object v16, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130314

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130184

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130182

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v32, 0x0

    const v34, 0x7fe06

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v23, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v34}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v1, Lcom/deepalhome/launcher/util/DialogInputInteractionController;

    const v3, 0x7f0b04c8

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_31

    move-object/from16 v19, v0

    goto :goto_6

    :cond_31
    move-object/from16 v19, v3

    :goto_6
    new-instance v3, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$inputInteraction$1;

    invoke-direct {v3, v0}, Lcom/deepalhome/launcher/settings/BleSettingsView$showMiTempRenameDialog$inputInteraction$1;-><init>(Landroidx/appcompat/widget/AppCompatEditText;)V

    const-wide/16 v23, 0x0

    const/16 v28, 0x2c8

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v26, v3

    invoke-direct/range {v16 .. v28}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;-><init>(Landroid/app/Dialog;Landroid/widget/EditText;Landroid/view/View;Ljava/util/List;ZZJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->bind()V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/util/DialogInputInteractionController;->onDialogShown()V

    return-void

    :pswitch_d
    const-string v0, "$environment"

    check-cast v9, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lcom/deepalhome/launcher/navigation/model/GridItem;

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->onAppClick:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_32

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    return-void

    :pswitch_e
    check-cast v9, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Landroid/content/Context;

    const-string v0, "$context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v13, v9, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->isExpanded:Z

    iget-object v0, v9, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaSb:Lcom/deepalhome/launcher/view/VerticalSeekBar;

    invoke-virtual {v1, v14}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setImageEnabled(Z)V

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->backgroundView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->navSbContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->callSbContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->mediaBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->moreBtn:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object v3, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v4, v9, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->closeWindowRunnable:Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c001a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    const v5, 0x7f070054

    iget-object v6, v9, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->rootView:Landroid/view/ViewGroup;

    if-lt v3, v4, :cond_33

    new-instance v3, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v3}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v1, v6, v3}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, v3, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_7

    :cond_33
    new-instance v3, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-direct {v3, v2}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6, v3}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, v3, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_7
    sget-object v3, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0018

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4, v5}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    sget-object v2, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v1, v13}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {v9}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->updatePopupPosition()V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/VolumePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    new-instance v1, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9, v10}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/navigation/VolumePopupWindow;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_f
    sget v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    check-cast v9, Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$action"

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->playButtonClickAnimation(Landroid/view/View;)V

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_10
    check-cast v9, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$this_apply"

    check-cast v2, Landroid/view/View;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->playButtonClickAnimation(Landroid/view/View;)V

    invoke-virtual {v9}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resetHideTimer()V

    new-instance v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v0, v9, v3}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_11
    check-cast v9, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$icon"

    check-cast v2, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->onIconClick:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_12
    const-string v0, "$viewHolder"

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v9, Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-ne v0, v8, :cond_34

    goto :goto_8

    :cond_34
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v9, Lcom/chad/library/adapter4/BaseQuickAdapter;->mOnItemClickListener:Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;

    if-eqz v2, :cond_35

    invoke-interface {v2, v9, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;->onClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    :cond_35
    :goto_8
    return-void

    :pswitch_13
    check-cast v9, Lcom/youth/banner/adapter/BannerAdapter;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v9, v2, v1}, Lcom/youth/banner/adapter/BannerAdapter;->$r8$lambda$M3Dn_SP7FbFkoXKi-fDVqMMKY7U(Lcom/youth/banner/adapter/BannerAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
