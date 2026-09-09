.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $dialog:Landroid/app/Dialog;

.field final synthetic $dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

.field final synthetic $isUploading:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $sp:Lcom/blankj/utilcode/util/SPUtils;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/util/SPUtils;Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->$sp:Lcom/blankj/utilcode/util/SPUtils;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->$isUploading:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/String;

    const-string v0, "code"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->$sp:Lcom/blankj/utilcode/util/SPUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "KEY_LAST_CLOUD_CONFIG_BACKUP_AT"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->$sp:Lcom/blankj/utilcode/util/SPUtils;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, v0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "KEY_LAST_CLOUD_CONFIG_BACKUP_ELAPSED_AT"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13005f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13005e

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->$isUploading:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->$dialogBinding:Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;->$dialog:Landroid/app/Dialog;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showCloudConfigBackupDialog$showBackupResult$44(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
