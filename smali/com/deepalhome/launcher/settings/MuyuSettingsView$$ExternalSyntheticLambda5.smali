.class public final synthetic Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/MuyuSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/MuyuSettingsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda5;->f$0:Lcom/deepalhome/launcher/settings/MuyuSettingsView;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    sget p1, Lcom/deepalhome/launcher/settings/MuyuSettingsView;->$r8$clinit:I

    const-string p1, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda5;->f$0:Lcom/deepalhome/launcher/settings/MuyuSettingsView;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuSafetySwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    return-void
.end method
