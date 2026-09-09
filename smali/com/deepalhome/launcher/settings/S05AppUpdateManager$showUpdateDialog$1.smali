.class public final Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdateDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $info:Lcom/deepalhome/launcher/http/S05AppUpdateInfo;

.field final synthetic $updateDialog:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdateDialog$1;->$updateDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdateDialog$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdateDialog$1;->$info:Lcom/deepalhome/launcher/http/S05AppUpdateInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdateDialog$1;->$updateDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "updateDialog"

    if-eqz v0, :cond_2

    check-cast v0, Landroid/app/Dialog;

    const v3, 0x7f0b040a

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdateDialog$1;->$updateDialog:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdateDialog$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$showUpdateDialog$1;->$info:Lcom/deepalhome/launcher/http/S05AppUpdateInfo;

    new-instance v1, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 v2, 0x16

    invoke-direct {v1, v2, v0, p0}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0x78

    invoke-static {v1, v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
