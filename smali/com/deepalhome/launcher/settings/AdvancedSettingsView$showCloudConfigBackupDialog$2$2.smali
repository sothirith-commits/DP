.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $dialog:Landroid/app/Dialog;

.field final synthetic $dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

.field final synthetic $isUploading:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;->$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;->$isUploading:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/String;

    const-string v0, "error"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;->$isUploading:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13005c

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "getString(...)"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showCloudConfigBackupDialog$showBackupResult$44(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
