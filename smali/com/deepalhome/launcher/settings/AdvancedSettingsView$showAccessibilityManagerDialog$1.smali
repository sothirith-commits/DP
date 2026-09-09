.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $adapter:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $dialogBinding:Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;

.field final synthetic $isUpdatingToggleAll:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->$adapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->$isUpdatingToggleAll:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "service"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    sget-object v3, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;->serviceId:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->matchesServiceId(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getHasShownAutoNaviAccessibilityGuide()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v6, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1300c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130029

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f13021b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;

    move-object v15, v2

    iget-object v9, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object v10, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->$adapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->$isUpdatingToggleAll:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;

    move-object v0, v2

    move-object v2, v9

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;-><init>(Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$2;

    move-object/from16 v16, v0

    invoke-direct {v0, v9, v10}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/16 v22, 0x0

    const v24, 0x7fc88

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-static/range {v6 .. v24}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object v4, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->$isUpdatingToggleAll:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;

    invoke-static {v3, v4, v0, v1, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->access$showAccessibilityManagerDialog$applyServiceToggle(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0
.end method
