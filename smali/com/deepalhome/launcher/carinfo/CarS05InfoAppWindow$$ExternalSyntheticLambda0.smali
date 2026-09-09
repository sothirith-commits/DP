.class public final synthetic Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, "this$0"

    iget-object v3, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    iget v0, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->setMenuExpanded(ZZ)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05ShowSinceCharged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;->CURRENT_TRIP:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    invoke-virtual {v3, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->showColumnOrderDialog(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)V

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130403

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130405

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const-string v1, "getString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1303fe

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnSectionDialog$1;

    move-object v13, v0

    invoke-direct {v0, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnSectionDialog$1;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    new-instance v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnSectionDialog$2;

    move-object v14, v0

    invoke-direct {v0, v3}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnSectionDialog$2;-><init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V

    const/16 v20, 0x0

    const v22, 0x7fc0e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v4 .. v22}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, v3, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->isMenuExpanded:Z

    xor-int/2addr v0, v1

    invoke-virtual {v3, v0, v1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->setMenuExpanded(ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
