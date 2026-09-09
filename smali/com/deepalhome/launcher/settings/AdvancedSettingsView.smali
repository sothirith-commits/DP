.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$Companion;-><init>(I)V

    return-void
.end method

.method public static final access$resolveImportResultMessage(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lcom/deepalhome/launcher/config/ImportResult;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/deepalhome/launcher/config/ImportResult$Success;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130070

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/deepalhome/launcher/config/ImportResult$VersionMismatch;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p1, Lcom/deepalhome/launcher/config/ImportResult$VersionMismatch;

    iget v0, p1, Lcom/deepalhome/launcher/config/ImportResult$VersionMismatch;->backupVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/deepalhome/launcher/config/ImportResult$VersionMismatch;->supportedVersion:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f130075

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/deepalhome/launcher/config/ImportResult$ParseError;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p1, Lcom/deepalhome/launcher/config/ImportResult$ParseError;

    iget-object p1, p1, Lcom/deepalhome/launcher/config/ImportResult$ParseError;->reason:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f13006f

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final access$showAccessibilityManagerDialog$applyServiceToggle(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;Z)Z
    .locals 9

    const-string v0, ""

    sget-object v1, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p3, p3, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;->serviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "serviceId"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->hasWriteSecureSettingsPermission(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    sget-object v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p3}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->matchesServiceId(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->getEnabledServicesString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->canonicalizeServiceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->getServiceIdAliases(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_1
    filled-new-array {p3, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_0
    instance-of v7, v3, Ljava/util/Collection;

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v7, v4

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    move v7, v5

    :goto_1
    const/16 v8, 0x3a

    if-eqz p4, :cond_7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_5

    move-object v6, p3

    goto :goto_2

    :cond_5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    move-object v6, p4

    :cond_6
    :goto_2
    sget-object p4, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p4}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/deepalhome/launcher/config/UserConfig;->setAccessibilityAllEnabled(Z)V

    invoke-virtual {p4}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/deepalhome/launcher/config/UserConfig;->getAccessibilityDaemonEnabled()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-static {v2, p3}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->addDaemonService(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p4, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_8
    sget-object p3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/deepalhome/launcher/config/UserConfig;->getAccessibilityDaemonEnabled()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {v1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/UserConfig;->getDaemonAccessibilityServices()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setDaemonAccessibilityServices(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/deepalhome/launcher/config/UserConfig;->getDaemonAccessibilityServices()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_9

    sget-object p4, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->Companion:Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Landroid/content/Intent;

    const-class v0, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;

    invoke-direct {p4, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, p4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_4

    :cond_a
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_b

    sget-object p3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p3

    invoke-virtual {p3, v4}, Lcom/deepalhome/launcher/config/UserConfig;->setAccessibilityAllEnabled(Z)V

    :cond_b
    :goto_5
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "enabled_accessibility_services"

    invoke-static {p3, p4, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p3, v5

    invoke-static {v2, p3}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->setAccessibilityEnabled(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    :catch_0
    :goto_6
    if-nez v4, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130033

    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    :cond_c
    invoke-static {p1, p2, p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showAccessibilityManagerDialog$refreshToggleAll(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;)V

    :goto_7
    return v4
.end method

.method public static final access$showLocalConfigBackupDialog$showBackupResult(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showLocalConfigBackupDialog$setLoadingState(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Landroid/app/Dialog;Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f130184

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;

    const/4 p3, 0x7

    invoke-direct {p1, p2, p3}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final initAmapRouteStrategy$selectStyle(Ljava/util/Map;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)V
    .locals 2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    iput-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/deepalhome/launcher/config/UserConfig;->setAmapNaviStrategyStyle(I)V

    return-void
.end method

.method public static final initS05VoiceAutoNaviMode$selectMode(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean v1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->s05VoiceAutoNaviModeAfterSystemRb:Landroid/widget/RadioButton;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->s05VoiceAutoNaviModeInterruptRb:Landroid/widget/RadioButton;

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setS05VoiceAutoNaviMode(I)V

    return-void
.end method

.method public static isPackageProcessRunning(Landroid/app/ActivityManager;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.wt.mahjong"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v4, "processName"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "com.wt.mahjong:"

    invoke-static {v2, v4, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const-string v2, "pkgList"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method public static setLoggerEnabled(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;ZZ)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/util/BleDebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/BleDebugLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/BleDebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/util/FileDebugLogger;->setEnabled(ZZ)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/util/FileDebugLogger;->setEnabled(ZZ)V

    :goto_0
    return-void
.end method

.method public static final showAccessibilityManagerDialog$refreshToggleAll(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->toggleAllSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "getContext(...)"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->getEnabledServicesString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method public static final showCloudConfigBackupDialog$setLoadingState$41(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Landroid/app/Dialog;Z)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static final showCloudConfigBackupDialog$showBackupResult$44(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showCloudConfigBackupDialog$setLoadingState$41(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Landroid/app/Dialog;Z)V

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p5, :cond_0

    iget-object p0, p1, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p1, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    const/16 p4, 0x8

    invoke-virtual {p0, p4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f130184

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;

    const/4 p2, 0x6

    invoke-direct {p0, p3, p2}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda6;-><init>(Landroid/app/Dialog;I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final showConfigImportDialog$setLoadingState$63(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Landroid/app/Dialog;Z)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static final showLocalConfigBackupDialog$setLoadingState(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Landroid/app/Dialog;Z)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static startIntent$default(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/content/Intent;ZZI)Z
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget p4, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->resolveActivity()Landroid/app/Activity;

    move-result-object p4

    if-nez p3, :cond_4

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/16 p0, 0x3e9

    invoke-virtual {p4, p1, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p4, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_0
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of p2, p0, Lkotlin/Result$Failure;

    if-eqz p2, :cond_5

    move-object p0, p1

    :cond_5
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyConfigBackupDialogTheme(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06038b

    if-eqz v0, :cond_0

    const v3, 0x7f06038c

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_1

    const v2, 0x7f060388

    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    if-eqz v0, :cond_2

    const v0, 0x7f0800aa

    goto :goto_1

    :cond_2
    const v0, 0x7f0800a9

    :goto_1
    iget-object v2, p1, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p1, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p1, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    const p1, 0x7f0800ab

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final applyConfigBackupTypeButtonTheme(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060388

    goto :goto_0

    :cond_0
    const v0, 0x7f060387

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iget-object v0, p1, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, 0x7f0800ab

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final clearDebugLog(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/util/BleDebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/BleDebugLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/util/BleDebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/FileDebugLogger;->clearLog()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/util/DebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/FileDebugLogger;->clearLog()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130078

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final exportDebugLog(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BleDebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/BleDebugLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/util/BleDebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/FileDebugLogger;->getLogFile()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/util/DebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/FileDebugLogger;->getLogFile()Ljava/io/File;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f13007d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->resolveActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f13007e

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130079

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0025

    return p0
.end method

.method public final handleLogSwitchChanged(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {v0, v1, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->setLogSwitchChecked(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;Z)V

    sget-object v3, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const v4, 0x7f130050

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const v4, 0x7f130081

    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f13007b

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f13007a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f13007c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f060049

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$1;

    move-object v12, v2

    invoke-direct {v2, v0, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$1;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;)V

    new-instance v2, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$2;

    move-object v13, v2

    invoke-direct {v2, v0, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v19, 0x0

    const v21, 0x7dc08

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v3 .. v21}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    return-void

    :cond_2
    invoke-static {v1, v2, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->setLoggerEnabled(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;ZZ)V

    return-void
.end method

.method public final onInit()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->openHelperBtn:Landroid/widget/Button;

    new-instance v2, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartLauncherBtn:Landroid/widget/Button;

    new-instance v2, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->setDefaultLauncherBtn:Landroid/widget/Button;

    new-instance v2, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->defaultLauncherCard:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->openAccessibilityBtn:Landroid/widget/Button;

    new-instance v2, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartMahjongBtn:Landroid/widget/Button;

    new-instance v2, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->helperCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->accessibilityCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->accessibilityRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->autoStartSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v3, Lcom/deepalhome/launcher/util/LauncherBootManager;->INSTANCE:Lcom/deepalhome/launcher/util/LauncherBootManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/config/UserConfig;->getLauncherBootEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->autoStartSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->debugLogCard:Landroid/widget/LinearLayout;

    sget-object v4, Lcom/deepalhome/launcher/settings/SettingsSecretState;->INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/deepalhome/launcher/settings/SettingsSecretState;->debugLogReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    iget-boolean v4, v4, Lcom/deepalhome/launcher/settings/HiddenTapReveal;->isRevealed:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->debugLogSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v4, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/deepalhome/launcher/util/DebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    iget-boolean v4, v4, Lcom/deepalhome/launcher/util/FileDebugLogger;->enabled:Z

    invoke-virtual {v1, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->debugLogSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;

    const/4 v6, 0x2

    invoke-direct {v4, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->exportDebugLogBtn:Landroid/widget/Button;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;

    const/4 v6, 0x3

    invoke-direct {v4, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->clearDebugLogBtn:Landroid/widget/Button;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;

    const/4 v6, 0x4

    invoke-direct {v4, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->bleDebugLogSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v4, Lcom/deepalhome/launcher/util/BleDebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/BleDebugLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/deepalhome/launcher/util/BleDebugLogger;->delegate:Lcom/deepalhome/launcher/util/FileDebugLogger;

    iget-boolean v4, v4, Lcom/deepalhome/launcher/util/FileDebugLogger;->enabled:Z

    invoke-virtual {v1, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->bleDebugLogSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->exportBleDebugLogBtn:Landroid/widget/Button;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->clearBleDebugLogBtn:Landroid/widget/Button;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;

    const/4 v6, 0x5

    invoke-direct {v4, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->exportConfigBtn:Landroid/widget/Button;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;

    const/4 v6, 0x6

    invoke-direct {v4, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->importConfigBtn:Landroid/widget/Button;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;

    const/4 v6, 0x7

    invoke-direct {v4, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->voiceAutoNaviSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/config/UserConfig;->getVoiceAutoNavi()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->updateAmapRouteStrategyVisibility()V

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getS05VoiceAutoNaviMode()I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->initS05VoiceAutoNaviMode$selectMode(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->s05VoiceAutoNaviModeAfterSystemRb:Landroid/widget/RadioButton;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->s05VoiceAutoNaviModeInterruptRb:Landroid/widget/RadioButton;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;

    const/4 v6, 0x1

    invoke-direct {v4, v1, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda20;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->voiceAutoNaviSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v3, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V

    invoke-virtual {v1, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyDefaultRb:Landroid/widget/RadioButton;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyAvoidTollRb:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyMultiRb:Landroid/widget/RadioButton;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyNoHighwayRb:Landroid/widget/RadioButton;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyAvoidJamRb:Landroid/widget/RadioButton;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyNoHighwayAvoidTollRb:Landroid/widget/RadioButton;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyNoHighwayAvoidJamRb:Landroid/widget/RadioButton;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyAvoidTollAndJamRb:Landroid/widget/RadioButton;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyNoHighwayAvoidTollAndJamRb:Landroid/widget/RadioButton;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyHighwayFirstRb:Landroid/widget/RadioButton;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyHighwayFirstAvoidJamRb:Landroid/widget/RadioButton;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v2

    filled-new-array/range {v6 .. v16}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    move v1, v2

    :cond_2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getAmapNaviStrategyStyle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v5, v3

    :cond_4
    if-eq v5, v3, :cond_5

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/deepalhome/launcher/config/UserConfig;->setAmapNaviStrategyStyle(I)V

    :cond_5
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {v2, v1, v0, v5}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->initAmapRouteStrategy$selectStyle(Ljava/util/Map;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    new-instance v6, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;

    invoke-direct {v6, v1, v4, v2, v0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda24;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;ILjava/util/LinkedHashMap;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final requestDefaultLauncher()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "android.app.role.HOME"

    invoke-virtual {v0, v3}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "createRequestRoleIntent(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x4

    invoke-static {p0, v0, v1, v2, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->startIntent$default(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/content/Intent;ZZI)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.HOME_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v2, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->startIntent$default(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/content/Intent;ZZI)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2, v2, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->startIntent$default(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/content/Intent;ZZI)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2, v2, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->startIntent$default(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/content/Intent;ZZI)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.settings.SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v2, v2, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->startIntent$default(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/content/Intent;ZZI)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget v7, Lkotlin/Result;->$r8$clinit:I

    filled-new-array {v3}, [Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    sget v7, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :try_start_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_2
    instance-of v0, v0, Lkotlin/Result$Failure;

    xor-int/2addr v0, v1

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "addCategory(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-static {p0, v0, v2, v1, v3}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->startIntent$default(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/content/Intent;ZZI)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f130085

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_6
    if-eqz v0, :cond_7

    return-void

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f130088

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_8
    :goto_4
    return-void
.end method

.method public final resolveActivity()Landroid/app/Activity;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v1, p0

    :cond_2
    return-object v1
.end method

.method public final setLogSwitchChecked(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->bleDebugLogSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->debugLogSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    :goto_0
    return-void
.end method

.method public final updateAmapRouteStrategyVisibility()V
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getVoiceAutoNavi()Z

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->s05VoiceAutoNaviModeContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyContainer:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getVoiceAutoNavi()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 29

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f06038c

    goto :goto_0

    :cond_0
    const v1, 0x7f06038b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f06038a

    goto :goto_1

    :cond_1
    const v2, 0x7f060389

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-eqz p1, :cond_2

    const v2, 0x7f08025b

    goto :goto_2

    :cond_2
    const v2, 0x7f08025a

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v4, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v5, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->defaultLauncherTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v6, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->helperTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v7, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->accessibilityTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v8, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->autoStartTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v9, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->voiceControlTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v10, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->configBackupTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v11, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartMahjongTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v12, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->debugLogTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v13, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v14, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->s05VoiceAutoNaviModeTitleTv:Landroid/widget/TextView;

    filled-new-array/range {v4 .. v14}, [Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartDescTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->defaultLauncherDescTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->helperDescTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->accessibilityDescTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->autoStartSwitchTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->voiceAutoNaviTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->configBackupDescTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v10

    check-cast v10, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v10, v10, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartMahjongDescTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v11

    check-cast v11, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v11, v11, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->debugLogSwitchTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v12

    check-cast v12, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v12, v12, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->s05VoiceAutoNaviModeDescTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v13

    check-cast v13, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v13, v13, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->s05VoiceAutoNaviModeAfterSystemRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v14

    check-cast v14, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v14, v14, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->s05VoiceAutoNaviModeInterruptRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v15

    check-cast v15, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v15, v15, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->bleDebugLogSwitchTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move/from16 p1, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyTitleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyDefaultRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move/from16 v18, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyAvoidTollRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyMultiRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyNoHighwayRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyAvoidJamRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyNoHighwayAvoidTollRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyNoHighwayAvoidJamRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyAvoidTollAndJamRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyNoHighwayAvoidTollAndJamRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyHighwayFirstRb:Landroid/widget/RadioButton;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyHighwayFirstAvoidJamRb:Landroid/widget/RadioButton;

    move-object/from16 v16, v0

    const/16 v0, 0x19

    new-array v0, v0, [Landroid/widget/TextView;

    const/16 v28, 0x0

    aput-object v3, v0, v28

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/4 v3, 0x2

    aput-object v5, v0, v3

    const/4 v3, 0x3

    aput-object v6, v0, v3

    const/4 v3, 0x4

    aput-object v7, v0, v3

    const/4 v3, 0x5

    aput-object v8, v0, v3

    const/4 v3, 0x6

    aput-object v9, v0, v3

    const/4 v3, 0x7

    aput-object v10, v0, v3

    const/16 v3, 0x8

    aput-object v11, v0, v3

    const/16 v3, 0x9

    aput-object v12, v0, v3

    const/16 v3, 0xa

    aput-object v13, v0, v3

    const/16 v3, 0xb

    aput-object v14, v0, v3

    const/16 v3, 0xc

    aput-object v15, v0, v3

    const/16 v3, 0xd

    aput-object v2, v0, v3

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0xf

    aput-object v19, v0, v1

    const/16 v1, 0x10

    aput-object v20, v0, v1

    const/16 v1, 0x11

    aput-object v21, v0, v1

    const/16 v1, 0x12

    aput-object v22, v0, v1

    const/16 v1, 0x13

    aput-object v23, v0, v1

    const/16 v1, 0x14

    aput-object v24, v0, v1

    const/16 v1, 0x15

    aput-object v25, v0, v1

    const/16 v1, 0x16

    aput-object v26, v0, v1

    const/16 v1, 0x17

    aput-object v27, v0, v1

    const/16 v1, 0x18

    aput-object v16, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move/from16 v2, v18

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->autoStartHintTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->voiceAutoNaviHintTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->debugLogSwitchHintTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->bleDebugLogSwitchHintTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyHintTv:Landroid/widget/TextView;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move/from16 v2, v17

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartLauncherBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v2, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->setDefaultLauncherBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v3, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->openHelperBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v4, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->openAccessibilityBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v5, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->exportConfigBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v6, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->importConfigBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v7, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartMahjongBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v8, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->exportDebugLogBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v9, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->clearDebugLogBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v10, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->exportBleDebugLogBtn:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v11, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->clearBleDebugLogBtn:Landroid/widget/Button;

    filled-new-array/range {v1 .. v11}, [Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0800ab

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v2, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->defaultLauncherCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v3, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->helperCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v4, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->accessibilityCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v5, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->autoStartCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v6, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->voiceControlCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v7, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->configBackupCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v8, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->s05VoiceAutoNaviModeContainer:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v9, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->amapRouteStrategyContainer:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v10, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->restartMahjongCard:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v11, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->debugLogCard:Landroid/widget/LinearLayout;

    filled-new-array/range {v1 .. v11}, [Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_7
    return-void
.end method
