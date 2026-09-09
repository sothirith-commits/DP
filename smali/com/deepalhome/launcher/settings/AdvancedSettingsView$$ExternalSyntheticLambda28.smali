.class public final synthetic Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$3:Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;->f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;->f$3:Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 16

    move-object/from16 v0, p0

    sget v1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    const-string v2, "$isUpdatingToggleAll"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;->f$1:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    const-string v3, "this$0"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    const-string v4, "$adapter"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda28;->f$3:Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;

    const-string v4, "$dialogBinding"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v4, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x0

    const-string v5, "enabled_accessibility_services"

    const-string v6, "getContext(...)"

    const/4 v7, 0x1

    if-eqz p2, :cond_4

    sget-object v8, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->hasWriteSecureSettingsPermission(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    invoke-static {v9}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->getInstalledAccessibilityServices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v11, ":"

    sget-object v14, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$enableAllServices$servicesStr$1;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$enableAllServices$servicesStr$1;

    const/16 v15, 0x1e

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v8

    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v5, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v9, v7}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->setAccessibilityEnabled(Landroid/content/Context;Z)V

    sget-object v5, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/deepalhome/launcher/config/UserConfig;->setAccessibilityAllEnabled(Z)V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/deepalhome/launcher/config/UserConfig;->getAccessibilityDaemonEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;

    iget-object v11, v11, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;->serviceId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v8}, Lcom/deepalhome/launcher/config/UserConfig;->setDaemonAccessibilityServices(Ljava/util/ArrayList;)V

    invoke-static {v9}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->startDaemonServiceIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    sget-object v8, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->hasWriteSecureSettingsPermission(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, ""

    invoke-static {v8, v5, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v9, v4}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->setAccessibilityEnabled(Landroid/content/Context;Z)V

    sget-object v5, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/deepalhome/launcher/config/UserConfig;->setAccessibilityAllEnabled(Z)V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/deepalhome/launcher/config/UserConfig;->getAccessibilityDaemonEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v8}, Lcom/deepalhome/launcher/config/UserConfig;->setDaemonAccessibilityServices(Ljava/util/ArrayList;)V

    sget-object v5, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->Companion:Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_1
    sget-object v4, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->getInstalledAccessibilityServices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_7

    check-cast v3, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;

    iput-object v4, v3, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->services:Ljava/util/List;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-static {v1, v0, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showAccessibilityManagerDialog$refreshToggleAll(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;)V

    goto :goto_3

    :cond_7
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :catch_0
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130033

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iput-boolean v7, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    xor-int/lit8 v2, p2, 0x1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;->toggleAllSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    iput-boolean v4, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_3
    return-void
.end method
