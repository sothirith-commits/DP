.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showBackupCodeImportDialog$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $loadingDialog:Landroid/app/Dialog;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showBackupCodeImportDialog$4$1;->$loadingDialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showBackupCodeImportDialog$4$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    const-string v2, "configJson"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigBackupManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigBackupManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/config/ConfigBackupManager;->importConfig(Ljava/lang/String;)Lcom/deepalhome/launcher/config/ImportResult;

    move-result-object v1

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showBackupCodeImportDialog$4$1;->$loadingDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    sget-object v3, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showBackupCodeImportDialog$4$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->access$resolveImportResultMessage(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lcom/deepalhome/launcher/config/ImportResult;)Ljava/lang/String;

    move-result-object v5

    const/16 v19, 0x0

    const v21, 0x7ffed

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v3 .. v21}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
