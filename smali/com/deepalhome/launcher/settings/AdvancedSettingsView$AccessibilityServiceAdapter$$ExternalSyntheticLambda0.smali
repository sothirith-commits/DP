.class public final synthetic Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;

.field public final synthetic f$1:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;

.field public final synthetic f$2:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$service"

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$holder"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter;->onToggle:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p2, v1, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper$AccessibilityServiceItem;->isEnabled:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$AccessibilityServiceAdapter$ViewHolder;->binding:Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/ItemAccessibilityServiceBinding;->serviceSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    :goto_0
    return-void
.end method
