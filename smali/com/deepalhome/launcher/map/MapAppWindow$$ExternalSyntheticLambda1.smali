.class public final synthetic Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "this$0"

    iget-object v6, v0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget v0, v0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast v6, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, v6, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->outsideDismissEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/deepalhome/launcher/widget/WidgetMoreMenuController;->dismiss()V

    :cond_0
    return-void

    :pswitch_0
    sget v0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->appCenterHost:Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v4}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$toggleAppCenter(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    :cond_3
    :goto_0
    return-void

    :pswitch_1
    check-cast v6, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "file_browser_mode"

    const-string v2, "image_picker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "file_browser_allow_multiple"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v6, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->localImagePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    sget v0, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v6, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->binding:Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;

    const-string v1, "binding"

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->magiskBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget v0, v6, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->magiskRevealTapCount:I

    add-int/2addr v0, v2

    iput v0, v6, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->magiskRevealTapCount:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_7

    iget-object v0, v6, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->binding:Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AddWidgetDialogBinding;->magiskBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :pswitch_3
    const-string v0, "$task"

    check-cast v6, Lcom/liulishuo/okdownload/DownloadTask;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/liulishuo/okdownload/DownloadTask;->cancel()V

    return-void

    :pswitch_4
    sget v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v4, v4}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    :pswitch_5
    check-cast v6, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;

    invoke-static {v6, v1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsView;->$r8$lambda$92Fb_WNcBRPYtZqr4ERO7AVaJc4(Lcom/deepalhome/launcher/shortcuts/ShortcutsView;Landroid/view/View;)V

    return-void

    :pswitch_6
    check-cast v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/ActionPickerDialog;

    sget-object v1, Lcom/deepalhome/launcher/settings/ActionPickerMode;->SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$8$1;

    invoke-direct {v2, v6}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$8$1;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V

    iget-object v3, v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v2}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/settings/ActionPickerMode;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/ActionPickerDialog;->show()V

    return-void

    :pswitch_7
    check-cast v6, Lcom/deepalhome/launcher/settings/SettingsFragment;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_8
    check-cast v6, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/deepalhome/launcher/HelperActivity;

    iget-object v2, v6, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v1, v2, Landroid/app/Activity;

    if-nez v1, :cond_9

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_9
    invoke-static {v2, v0, v3}, Landroidx/core/content/ContextCompat$Api16Impl;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :pswitch_9
    sget v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_a

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_2

    :cond_a
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_c

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_b

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_3

    :cond_b
    move-object v0, v3

    :cond_c
    :goto_3
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_d

    move-object v3, v0

    :cond_d
    if-nez v3, :cond_e

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1301fe

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_e
    sget-object v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;-><init>()V

    new-instance v1, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$openFloatingBallIconPicker$1;

    invoke-direct {v1, v6}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$openFloatingBallIconPicker$1;-><init>(Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->onIconApplied:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    const-string v2, "IconLibraryDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_a
    sget v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/settings/BleSettingsView;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v7, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    new-instance v0, Lcom/deepalhome/launcher/settings/BleSettingsView$showBuyDeviceDialog$1;

    move-object/from16 v16, v0

    invoke-direct {v0, v6}, Lcom/deepalhome/launcher/settings/BleSettingsView$showBuyDeviceDialog$1;-><init>(Lcom/deepalhome/launcher/settings/BleSettingsView;)V

    const/16 v23, 0x0

    const v25, 0x7fe0c

    const-string v8, "TuoTuo Tie purchase"

    const-string v9, "You can purchase TuoTuo Tie from the App Mall, fully compatible.\nYou can also purchase the \"Youth Edition\" TuoTuo Tie made by the developer, at one-third the price, with 99% of the features and better feeling, absolutely worth the value. Welcome to buy and experience it."

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v13, "Buy on Xianyu"

    const/4 v14, 0x1

    const-string v15, "No thanks"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    invoke-static/range {v7 .. v25}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    return-void

    :pswitch_b
    sget v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    const-string v0, "$context"

    check-cast v6, Landroid/content/Context;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/deepalhome/launcher/settings/BlePairingActivity;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_c
    sget v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/tuotuotie/BleDevice;

    const-string v0, "$device"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    const-string v1, "address"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-boolean v1, Lcom/deepalhome/tuotuotie/Tuotuotie;->initialized:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceStorage;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->devices:Ljava/util/ArrayList;

    new-instance v2, Lcom/deepalhome/tuotuotie/BleDeviceStorage$removeDevice$removed$1;

    invoke-direct {v2, v0}, Lcom/deepalhome/tuotuotie/BleDeviceStorage$removeDevice$removed$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->saveDevices()V

    :cond_f
    sget-object v1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-virtual {v1, v0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->removeDevice$tuotuotie_release(Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tuotuotie.init() not called"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    const-string v0, "$item"

    check-cast v6, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_e
    sget v0, Lcom/deepalhome/launcher/pip/PipAppWindow;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/pip/PipAppWindow;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/pip/PipAppWindow;->showAppPicker()V

    return-void

    :pswitch_f
    check-cast v6, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v6, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->$r8$lambda$5H_hlvl6jpYAhJE32iKiDDohbaM(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Landroid/view/View;)V

    return-void

    :pswitch_10
    check-cast v6, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {v6, v1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->$r8$lambda$MdEoKk5G2nYN8lF1IMHmP0_RUDg(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Landroid/view/View;)V

    return-void

    :pswitch_11
    check-cast v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isUserInteracting:Z

    if-nez v0, :cond_11

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->dismiss()V

    :cond_11
    return-void

    :pswitch_12
    check-cast v6, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->dismiss()V

    return-void

    :pswitch_13
    check-cast v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isUserInteracting:Z

    if-nez v0, :cond_12

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dismiss()V

    :cond_12
    return-void

    :pswitch_14
    check-cast v6, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, v6, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->isUserInteracting:Z

    if-nez v0, :cond_13

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->dismiss()V

    :cond_13
    return-void

    :pswitch_15
    check-cast v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isUserInteracting:Z

    if-nez v0, :cond_14

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dismiss()V

    :cond_14
    return-void

    :pswitch_16
    check-cast v6, Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-static {v6, v1}, Lcom/deepalhome/launcher/navigation/NavigationBar;->$r8$lambda$uo2cevZAkeMQONDBNH1Ctbow0Go(Lcom/deepalhome/launcher/navigation/NavigationBar;Landroid/view/View;)V

    return-void

    :pswitch_17
    check-cast v6, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, v6, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isUserInteracting:Z

    if-nez v0, :cond_15

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->dismiss()V

    :cond_15
    return-void

    :pswitch_18
    check-cast v6, Lcom/deepalhome/launcher/music/FloatingLockOverlay;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_19
    sget-object v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    check-cast v6, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v4, v4}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    return-void

    :pswitch_1a
    check-cast v6, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->onTapBlank:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_16
    return-void

    :pswitch_1b
    const-string v0, "$handleClick"

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1c
    sget v0, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    new-instance v1, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1;

    invoke-direct {v1, v6}, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1;-><init>(Lcom/deepalhome/launcher/map/MapAppWindow;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync(Lkotlin/jvm/functions/Function1;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
