.class public final synthetic Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "$config"

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/config/UserConfig;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const v2, 0x7f0b00c5

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setBottomNavBackgroundEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setBottomNavBlurEnabled(Z)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0b00c4

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v4}, Lcom/deepalhome/launcher/config/UserConfig;->setBottomNavBackgroundEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setBottomNavBlurEnabled(Z)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0b00c1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v4}, Lcom/deepalhome/launcher/config/UserConfig;->setBottomNavBackgroundEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/deepalhome/launcher/config/UserConfig;->setBottomNavBlurEnabled(Z)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, v0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    const-string v2, "this$0"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const v2, 0x7f0b0165

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setCustomNavigationBarEnabled(Z)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setCustomNavigationBarStyle(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->syncNavigationModeRadioButton()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->updateBottomNavSettingsVisibility()V

    goto :goto_2

    :cond_3
    const v2, 0x7f0b0163

    if-ne v1, v2, :cond_6

    invoke-static {}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->isBottomNavigationModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    const v1, 0x7f130174

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f130184

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f130182

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    instance-of v1, v3, Landroid/app/Activity;

    if-eqz v1, :cond_5

    check-cast v3, Landroid/app/Activity;

    move-object v13, v3

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    move-object v13, v1

    :goto_1
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$1;

    move-object v11, v1

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$1;-><init>(Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;)V

    new-instance v1, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$2;

    move-object v12, v1

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$2;-><init>(Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;)V

    const/16 v18, 0x0

    const v20, 0x7f809

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v2 .. v20}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    :cond_6
    :goto_2
    return-void

    :pswitch_1
    iget-object v0, v0, Lcom/deepalhome/launcher/settings/SettingsFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/settings/SettingsFragment;

    const-string v2, "this$0"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->advancedSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/deepalhome/launcher/settings/SettingsSecretState;->INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/settings/SettingsSecretState;->debugLogReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    iput v3, v2, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->tapCount:I

    iput-boolean v3, v2, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    :cond_7
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->scheduledTaskSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v1, v2, :cond_8

    sget-object v2, Lcom/deepalhome/launcher/settings/SettingsSecretState;->INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/settings/SettingsSecretState;->scheduledTaskMagiskReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    iput v3, v2, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->tapCount:I

    iput-boolean v3, v2, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    :cond_8
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->layoutSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_9

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->layoutSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->showSettingView(Landroid/view/ViewGroup;)V

    goto/16 :goto_3

    :cond_9
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->wallpaperSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_a

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->wallpaperSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->showSettingView(Landroid/view/ViewGroup;)V

    goto/16 :goto_3

    :cond_a
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->floatingBallSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->floatingBallSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->showSettingView(Landroid/view/ViewGroup;)V

    goto/16 :goto_3

    :cond_b
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->muyuSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->muyuSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/settings/MuyuSettingsView;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->showSettingView(Landroid/view/ViewGroup;)V

    goto :goto_3

    :cond_c
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->scheduledTaskSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_d

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->scheduledTaskSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->showSettingView(Landroid/view/ViewGroup;)V

    goto :goto_3

    :cond_d
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->advancedSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_e

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->advancedSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->showSettingView(Landroid/view/ViewGroup;)V

    goto :goto_3

    :cond_e
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->bleSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_f

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->bleSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/settings/BleSettingsView;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->showSettingView(Landroid/view/ViewGroup;)V

    goto :goto_3

    :cond_f
    iget-object v2, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->_binding:Lcom/deepalhome/launcher/databinding/SettingsViewBinding;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SettingsViewBinding;->aboutSettingsBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_10

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/SettingsFragment;->aboutSettingsView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/settings/SettingsFragment;->showSettingView(Landroid/view/ViewGroup;)V

    :cond_10
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
