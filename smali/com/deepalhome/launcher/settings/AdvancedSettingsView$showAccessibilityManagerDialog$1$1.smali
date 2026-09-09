.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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

.field final synthetic $service:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->$service:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->$adapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->$isUpdatingToggleAll:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setHasShownAutoNaviAccessibilityGuide(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->$isUpdatingToggleAll:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->$service:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->access$showAccessibilityManagerDialog$applyServiceToggle(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/AccessibilityManagerDialogBinding;Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;Z)Z

    sget-object v0, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->getInstalledAccessibilityServices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showAccessibilityManagerDialog$1$1;->$adapter:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->services:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
