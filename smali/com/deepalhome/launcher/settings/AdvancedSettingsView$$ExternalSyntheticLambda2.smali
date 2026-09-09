.class public final synthetic Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    const/4 p1, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "null cannot be cast to non-null type androidx.cardview.widget.CardView"

    const-string v4, "inflate(...)"

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;->f$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    const-string v6, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->requestDefaultLauncher()V

    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->requestDefaultLauncher()V

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    move-result-object p0

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->applyConfigBackupDialogTheme(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V

    invoke-virtual {v5, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->applyConfigBackupTypeButtonTheme(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f130074

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f130073

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f130072

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f130071

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Landroidx/cardview/widget/CardView;)Landroid/app/Dialog;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;

    const/4 v3, 0x2

    invoke-direct {p1, p0, v5, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;-><init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0, v5, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;-><init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_2
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    move-result-object p0

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->applyConfigBackupDialogTheme(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V

    invoke-virtual {v5, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->applyConfigBackupTypeButtonTheme(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f130059

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f130058

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f130057

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f130056

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Landroidx/cardview/widget/CardView;)Landroid/app/Dialog;

    move-result-object p0

    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, v5, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;-><init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, v5, p1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda22;-><init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_3
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;->BLE:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;

    invoke-virtual {v5, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->clearDebugLog(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;)V

    return-void

    :pswitch_4
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;->APP:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;

    invoke-virtual {v5, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->clearDebugLog(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;)V

    return-void

    :pswitch_5
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;->APP:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;

    invoke-virtual {v5, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->exportDebugLog(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;)V

    return-void

    :pswitch_6
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartMahjongBtn:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v0, 0x19

    invoke-direct {p1, v0, v5}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_7
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "getContext(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->syncConfigFromSettings(Landroid/content/Context;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getAccessibilityDaemonEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->syncDaemonServicesFromSettings(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v7, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->$r8$clinit:I

    sget-object v7, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v7, 0x7f0e001d

    const/4 v8, 0x0

    invoke-static {v0, v7, v8, v1, v8}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v1, :cond_1

    const v7, 0x7f06038c

    goto :goto_0

    :cond_1
    const v7, 0x7f06038b

    :goto_0
    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v1, :cond_2

    const v9, 0x7f06038a

    goto :goto_1

    :cond_2
    const v9, 0x7f060389

    :goto_1
    invoke-virtual {v7, v9}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v1, :cond_3

    const v10, 0x7f060026

    goto :goto_2

    :cond_3
    const v10, 0x7f060023

    :goto_2
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v1, :cond_4

    const v1, 0x7f060075

    goto :goto_3

    :cond_4
    const v1, 0x7f060074

    :goto_3
    invoke-virtual {v10, v1}, Landroid/content/Context;->getColor(I)I

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v9}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->hintTv:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->toggleAllLabelTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->daemonToggleLabelTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->daemonToggleHintTv:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->getInstalledAccessibilityServices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v7, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v9

    new-instance v10, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;

    invoke-direct {v10, v0, v5, v4, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;-><init>(Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {v7, v5, v1, v9, v10}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Ljava/util/ArrayList;ZLcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;)V

    iput-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object p1, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->serviceListRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_5

    check-cast v1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {v4, v0, v5}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showAccessibilityManagerDialog$refreshToggleAll(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;)V

    new-instance p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;

    invoke-direct {p1, v0, v5, v4, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;-><init>(Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->toggleAllSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getAccessibilityDaemonEnabled()Z

    move-result p0

    iget-object p1, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->daemonToggleSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {p1, p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    new-instance p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;

    invoke-direct {p0, v5, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {p1, p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object p0, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    iget-object p1, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroidx/cardview/widget/CardView;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Landroidx/cardview/widget/CardView;)Landroid/app/Dialog;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v2}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;I)V

    iget-object p0, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->closeBtn:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    :pswitch_8
    sget p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;->BLE:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;

    invoke-virtual {v5, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->exportDebugLog(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;)V

    return-void

    nop

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
