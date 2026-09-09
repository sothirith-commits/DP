.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $editText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;->$editText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;->$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    const v3, 0x7f13018d

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    # MODIFIED: Changed if-eqz to if-nez to invert the failure logic
    if-eqz v0, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setHasAcknowledgedDisclaimer(Z)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getDisclaimerDialog$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setDisclaimerDialog$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$maybeScheduleGestureGuideAfterAutoStart(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    const v0, 0x7f13018e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
