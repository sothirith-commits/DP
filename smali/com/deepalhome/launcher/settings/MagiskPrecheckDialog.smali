.class public final Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final confirmButtonText:Ljava/lang/CharSequence;

.field public final context:Landroid/content/Context;

.field public final failColor:I

.field public final hintColor:I

.field public isChecking:Z

.field public final isNight:Z

.field public latestResult:Lcom/deepalhome/launcher/task/MagiskPrecheckResult;

.field public final messageText:Ljava/lang/CharSequence;

.field public final onConfirmed:Lkotlin/jvm/functions/Function0;

.field public final passColor:I

.field public final textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "onConfirmed"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->messageText:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->confirmButtonText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->onConfirmed:Lkotlin/jvm/functions/Function0;

    sget-object p2, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p2

    iput-boolean p2, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->isNight:Z

    if-eqz p2, :cond_0

    const p3, 0x7f06038c

    goto :goto_0

    :cond_0
    const p3, 0x7f06038b

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->textColor:I

    if-eqz p2, :cond_1

    const p2, 0x7f06038a

    goto :goto_1

    :cond_1
    const p2, 0x7f060389

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->hintColor:I

    const p2, 0x7f060019

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->passColor:I

    const p2, 0x7f060049

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->failColor:I

    return-void
.end method

.method public static final show$runChecks(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->isChecking:Z

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->context:Landroid/content/Context;

    const v1, 0x7f1302df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->hintColor:I

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v5, 0x7f1302e7

    invoke-static {p0, p3, v5, v3, v2}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->show$updateStatusView(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Landroid/widget/TextView;ILjava/lang/String;I)V

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v5, 0x7f1302d7

    invoke-static {p0, p4, v5, v3, v2}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->show$updateStatusView(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Landroid/widget/TextView;ILjava/lang/String;I)V

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x7f1302e3

    invoke-static {p0, p5, v1, v0, v2}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->show$updateStatusView(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Landroid/widget/TextView;ILjava/lang/String;I)V

    sget-object v0, Lcom/deepalhome/launcher/task/MagiskActivationManager;->INSTANCE:Lcom/deepalhome/launcher/task/MagiskActivationManager;

    new-instance v8, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$show$runChecks$1;-><init>(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/adb/AdbUtil$unlockAdbPassword$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, v8}, Lcom/deepalhome/launcher/adb/AdbUtil$unlockAdbPassword$1;-><init>(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->executeBySingle(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public static final show$updateStatusView(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Landroid/widget/TextView;ILjava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0xff1a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final show()V
    .locals 20

    move-object/from16 v8, p0

    const/4 v9, 0x3

    iget-object v10, v8, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->$r8$clinit:I

    sget-object v1, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v1, 0x7f0e0052

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;

    const-string v0, "inflate(...)"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0082

    iget-object v2, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->viewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f1302e4

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v8, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->messageText:Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    const v2, 0x7f1302da

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v4, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f130182

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1302de

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0b0564

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    const v3, 0x7f0b069e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    const v3, 0x7f0b006c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/TextView;

    const v3, 0x7f0b055e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    const v3, 0x7f0b0411

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v8, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->textColor:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget v5, v8, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->hintColor:I

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, v8, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->isNight:Z

    iget-object v1, v11, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->rootView:Landroidx/cardview/widget/CardView;

    if-eqz v0, :cond_1

    const v0, 0x7f060026

    invoke-virtual {v10, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    const v0, 0x7f060388

    invoke-virtual {v10, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0800aa

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f060023

    invoke-virtual {v10, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    const v0, 0x7f06038b

    invoke-virtual {v10, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0800a9

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const v0, 0x7f0800ab

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f060387

    invoke-virtual {v10, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, v11, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;

    invoke-direct {v0, v4, v9}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$$ExternalSyntheticLambda1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v9, v3

    move-object v3, v11

    move-object/from16 v16, v4

    move-object v4, v13

    move-object/from16 v17, v11

    move v11, v5

    move-object v5, v14

    move-object/from16 v18, v14

    move-object v14, v6

    move-object v6, v15

    move-object/from16 v19, v7

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Landroid/app/AlertDialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v8}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1302e1

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1302e7

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0xff1a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1302d7

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1302e3

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f06038f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    const/4 v2, 0x3

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v13

    move-object v4, v15

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;->show$runChecks(Lcom/deepalhome/launcher/settings/MagiskPrecheckDialog;Lcom/deepalhome/launcher/databinding/DialogViewBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method
