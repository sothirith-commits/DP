.class public final synthetic Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/AboutSettingsView;Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/http/DonateItem;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$4:Landroid/view/KeyEvent$Callback;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$2:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;Landroid/app/Dialog;I)V
    .locals 0

    iput p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$2:Landroid/view/View;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$4:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "$dialog"

    iget-object v5, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$4:Landroid/view/KeyEvent$Callback;

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Object;

    const-string v7, "this$0"

    iget-object v8, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$2:Landroid/view/View;

    iget-object v9, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Object;

    iget-object v10, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iget v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    move-object v0, v10

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    const-string v1, "$isUploading"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v9, Lkotlin/jvm/internal/Ref$LongRef;

    const-string v1, "$lastConfirmClickElapsed"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v8

    check-cast v1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    const-string v7, "$dialogBinding"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Landroid/app/Dialog;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v10, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long v10, v7, v10

    const-wide/16 v12, 0x320

    cmp-long v2, v10, v12

    if-gez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iput-wide v7, v9, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-string v2, ""

    invoke-static {v2}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v2, v12, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    const-string v11, "KEY_LAST_CLOUD_CONFIG_BACKUP_AT"

    const-wide/16 v13, 0x0

    invoke-interface {v2, v11, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    const-string v11, "KEY_LAST_CLOUD_CONFIG_BACKUP_ELAPSED_AT"

    const-wide/16 v3, -0x1

    invoke-interface {v2, v11, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    cmp-long v2, v15, v13

    if-lez v2, :cond_8

    sub-long/2addr v9, v15

    cmp-long v2, v17, v13

    if-ltz v2, :cond_2

    cmp-long v2, v7, v17

    if-ltz v2, :cond_2

    sub-long v3, v7, v17

    :cond_2
    cmp-long v2, v3, v13

    if-gez v2, :cond_4

    cmp-long v2, v9, v13

    if-ltz v2, :cond_3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    cmp-long v2, v9, v13

    if-gez v2, :cond_5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_5
    sub-long v7, v9, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v15, 0x1d4c0

    cmp-long v2, v7, v15

    if-gtz v2, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_6
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v7, 0x36ee80

    sub-long/2addr v7, v2

    cmp-long v4, v7, v13

    if-lez v4, :cond_8

    const-wide/32 v7, 0x37d8df

    sub-long/2addr v7, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v7, v2

    long-to-int v2, v7

    const/4 v3, 0x1

    if-ge v2, v3, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    move v4, v2

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f13005d

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "getString(...)"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v16, 0x0

    move-object v11, v0

    move-object v12, v6

    move-object v13, v1

    move-object v14, v5

    invoke-static/range {v11 .. v16}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showCloudConfigBackupDialog$showBackupResult$44(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v6, v5, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->showCloudConfigBackupDialog$setLoadingState$41(Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;Landroid/app/Dialog;Z)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f130060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigBackupManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigBackupManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/config/ConfigBackupManager;->exportConfig()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/task/TaskShareManager;->INSTANCE:Lcom/deepalhome/launcher/task/TaskShareManager;

    new-instance v4, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;

    move-object v11, v4

    move-object v13, v5

    move-object v14, v1

    move-object v15, v0

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$1;-><init>(Lcom/blankj/utilcode/util/SPUtils;Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V

    new-instance v7, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;

    invoke-direct {v7, v5, v1, v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showCloudConfigBackupDialog$2$2;-><init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "backups"

    const-string v1, "The configuration data is too large"

    invoke-static {v2, v0, v1, v4, v7}, Lcom/deepalhome/launcher/task/TaskShareManager;->uploadJsonWithShareCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    :goto_2
    return-void

    :pswitch_0
    check-cast v5, Landroid/view/View;

    check-cast v10, Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v6, Lcom/deepalhome/launcher/http/DonateItem;

    const-string v0, "$item"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Landroid/widget/ImageView;

    const-string v0, "$previewImageView"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_d

    :try_start_1
    invoke-virtual {v6}, Lcom/deepalhome/launcher/http/DonateItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/deepalhome/launcher/settings/AboutSettingsView;->isInPreview:Z

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_a

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_b

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_c
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v6}, Lcom/deepalhome/launcher/http/DonateItem;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d

    iput-boolean v1, v10, Lcom/deepalhome/launcher/settings/AboutSettingsView;->isInPreview:Z

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_6
    return-void

    :pswitch_1
    check-cast v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Landroid/app/Dialog;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    if-nez v2, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f130455

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Is empty"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_e
    iget-object v2, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    instance-of v4, v2, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    if-eqz v4, :cond_11

    check-cast v2, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->getValue()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    invoke-virtual {v7, v4}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->normalizeVoiceText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    const v0, 0x7f130169

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    goto/16 :goto_13

    :cond_f
    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const v2, 0x7f13016b

    invoke-static {v2}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    :cond_10
    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    invoke-direct {v2, v4}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;-><init>(Ljava/lang/String;)V

    :cond_11
    iget-object v4, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    iput-object v2, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    check-cast v8, Landroid/widget/ImageView;

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v8, v9, v6}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->setupViews$updateTriggerDisplay(Landroid/widget/ImageView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/TextView;)V

    invoke-virtual {v9}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->checkAndShowConflict()V

    :cond_12
    sget-object v4, Lcom/deepalhome/launcher/task/model/TaskTrigger$None;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$None;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    iget-object v6, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditions:Ljava/util/ArrayList;

    if-nez v4, :cond_13

    sget-object v4, Lcom/deepalhome/launcher/task/model/ConflictChecker;->INSTANCE:Lcom/deepalhome/launcher/task/model/ConflictChecker;

    iget-object v7, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    invoke-virtual {v4, v2, v6, v7}, Lcom/deepalhome/launcher/task/model/ConflictChecker;->checkConflicts(Lcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->getHasConflict()Z

    move-result v4

    if-eqz v4, :cond_13

    const v0, 0x7f130163

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_13
    iget-object v4, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actions:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction;

    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    if-eqz v11, :cond_17

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;->getSeconds()I

    move-result v10

    if-lez v10, :cond_16

    :cond_15
    :goto_8
    const/4 v11, 0x1

    goto/16 :goto_a

    :cond_16
    const/4 v11, 0x1

    goto :goto_7

    :cond_17
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    if-eqz v11, :cond_18

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;->getEventId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    if-eqz v11, :cond_16

    sget-object v11, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;->getEventId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTriggerlessTask(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/ScheduledTask;

    move-result-object v10

    if-eqz v10, :cond_16

    goto :goto_8

    :cond_18
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;

    if-eqz v11, :cond_19

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;->getVolume()I

    move-result v10

    if-ltz v10, :cond_16

    const/16 v11, 0x15

    if-ge v10, v11, :cond_16

    goto :goto_8

    :cond_19
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    if-eqz v11, :cond_1a

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    goto :goto_8

    :cond_1a
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    if-eqz v11, :cond_1b

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    goto :goto_8

    :cond_1b
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    if-eqz v11, :cond_1c

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    goto :goto_8

    :cond_1c
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    if-eqz v11, :cond_1d

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;->getBrightness()I

    move-result v10

    const/4 v11, 0x1

    if-gt v11, v10, :cond_14

    const/16 v11, 0x65

    if-ge v10, v11, :cond_16

    goto :goto_8

    :cond_1d
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    if-eqz v11, :cond_1f

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->getCommand()Lcom/deepalhome/launcher/hvac/HvacCommand;

    move-result-object v10

    instance-of v11, v10, Lcom/deepalhome/launcher/hvac/HvacCommand$SetTemperature;

    if-eqz v11, :cond_1e

    check-cast v10, Lcom/deepalhome/launcher/hvac/HvacCommand$SetTemperature;

    iget v10, v10, Lcom/deepalhome/launcher/hvac/HvacCommand$SetTemperature;->temperature:F

    const/high16 v11, 0x418c0000    # 17.5f

    cmpg-float v11, v11, v10

    if-gtz v11, :cond_16

    const/high16 v11, 0x42020000    # 32.5f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_16

    goto/16 :goto_8

    :cond_1e
    instance-of v11, v10, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;

    if-eqz v11, :cond_15

    check-cast v10, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;

    iget v10, v10, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;->speed:I

    if-ltz v10, :cond_16

    const/16 v11, 0x9

    if-ge v10, v11, :cond_16

    goto/16 :goto_8

    :cond_1f
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;

    if-eqz v11, :cond_20

    goto/16 :goto_9

    :cond_20
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;

    if-eqz v11, :cond_21

    goto/16 :goto_9

    :cond_21
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;

    if-eqz v11, :cond_22

    goto/16 :goto_9

    :cond_22
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCurrentSongFavorite;

    if-eqz v11, :cond_23

    goto/16 :goto_9

    :cond_23
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMap;

    if-eqz v11, :cond_24

    goto/16 :goto_9

    :cond_24
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;

    if-eqz v11, :cond_25

    goto/16 :goto_9

    :cond_25
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$OpenJourney;

    if-eqz v11, :cond_26

    goto/16 :goto_9

    :cond_26
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SystemBack;

    if-eqz v11, :cond_27

    goto/16 :goto_9

    :cond_27
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;

    if-eqz v11, :cond_28

    goto/16 :goto_9

    :cond_28
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;

    if-eqz v11, :cond_29

    goto/16 :goto_9

    :cond_29
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;

    if-eqz v11, :cond_2a

    goto/16 :goto_9

    :cond_2a
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;

    if-eqz v11, :cond_2b

    goto/16 :goto_9

    :cond_2b
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;

    if-eqz v11, :cond_2c

    goto/16 :goto_9

    :cond_2c
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;

    if-eqz v11, :cond_2d

    goto/16 :goto_9

    :cond_2d
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;

    if-eqz v11, :cond_2e

    goto/16 :goto_9

    :cond_2e
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;

    if-eqz v11, :cond_2f

    goto/16 :goto_9

    :cond_2f
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;

    if-eqz v11, :cond_30

    goto/16 :goto_9

    :cond_30
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;

    if-eqz v11, :cond_31

    goto/16 :goto_9

    :cond_31
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;

    if-eqz v11, :cond_32

    goto/16 :goto_9

    :cond_32
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;

    if-eqz v11, :cond_33

    goto/16 :goto_9

    :cond_33
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFrontDefrost;

    if-eqz v11, :cond_34

    goto/16 :goto_9

    :cond_34
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearDefrost;

    if-eqz v11, :cond_35

    goto/16 :goto_9

    :cond_35
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRealTimeVoice;

    if-eqz v11, :cond_36

    goto/16 :goto_9

    :cond_36
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    if-eqz v11, :cond_37

    goto/16 :goto_9

    :cond_37
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    if-eqz v11, :cond_38

    goto/16 :goto_9

    :cond_38
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;

    if-eqz v11, :cond_39

    goto/16 :goto_9

    :cond_39
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;

    if-eqz v11, :cond_3a

    goto/16 :goto_9

    :cond_3a
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;

    if-eqz v11, :cond_3b

    goto/16 :goto_9

    :cond_3b
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;

    if-eqz v11, :cond_3c

    goto/16 :goto_9

    :cond_3c
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;

    if-eqz v11, :cond_3d

    goto/16 :goto_9

    :cond_3d
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;

    if-eqz v11, :cond_3e

    goto :goto_9

    :cond_3e
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFogLightStrobe;

    if-eqz v11, :cond_3f

    goto :goto_9

    :cond_3f
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToLowBeam;

    if-eqz v11, :cond_40

    goto :goto_9

    :cond_40
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToAutoLight;

    if-eqz v11, :cond_41

    goto :goto_9

    :cond_41
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$EnableAutoScreenBrightness;

    if-eqz v11, :cond_42

    goto :goto_9

    :cond_42
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$DisableAutoScreenBrightness;

    if-eqz v11, :cond_43

    goto :goto_9

    :cond_43
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;

    if-eqz v11, :cond_44

    goto :goto_9

    :cond_44
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearSeatBeltAlarm;

    if-eqz v11, :cond_45

    goto :goto_9

    :cond_45
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    if-eqz v11, :cond_46

    goto :goto_9

    :cond_46
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$AutoVolumeBySpeed;

    if-eqz v11, :cond_47

    goto :goto_9

    :cond_47
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;

    if-eqz v11, :cond_48

    goto :goto_9

    :cond_48
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;

    if-eqz v11, :cond_49

    goto :goto_9

    :cond_49
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;

    if-eqz v11, :cond_4a

    goto :goto_9

    :cond_4a
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;

    if-eqz v11, :cond_4b

    goto :goto_9

    :cond_4b
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$ActivateMagisk;

    if-eqz v11, :cond_4c

    goto :goto_9

    :cond_4c
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$StartProjectionHook;

    if-eqz v11, :cond_4d

    :goto_9
    goto/16 :goto_8

    :cond_4d
    instance-of v11, v10, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    const/4 v12, 0x6

    if-eqz v11, :cond_4e

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->getDuration()I

    move-result v10

    const/4 v11, 0x1

    if-gt v11, v10, :cond_14

    if-ge v10, v12, :cond_14

    goto :goto_a

    :cond_4e
    const/4 v11, 0x1

    instance-of v13, v10, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    if-eqz v13, :cond_4f

    check-cast v10, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;->getDuration()I

    move-result v10

    if-gt v11, v10, :cond_14

    if-ge v10, v12, :cond_14

    :goto_a
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_4f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_50
    const/4 v11, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_51

    const v0, 0x7f130042

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_51
    iget-object v3, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    sget-object v4, Lcom/deepalhome/launcher/task/model/TaskTrigger$None;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$None;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    const/4 v3, 0x0

    goto :goto_b

    :cond_52
    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    :goto_b
    iget-object v6, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->selectedTrigger:Lcom/deepalhome/launcher/task/model/TaskTrigger;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    const/4 v4, 0x0

    goto :goto_c

    :cond_53
    iget-object v4, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->conditionLogic:Lcom/deepalhome/launcher/task/model/ConditionLogic;

    :goto_c
    iget-object v6, v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->existingTask:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    if-eqz v6, :cond_54

    invoke-virtual {v6}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-virtual {v6}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getTrigger()Lcom/deepalhome/launcher/task/model/TaskTrigger;

    move-result-object v8

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-virtual {v6}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getActions()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-virtual {v6}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getConditions()Ljava/util/List;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-virtual {v6}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getConditionLogic()Lcom/deepalhome/launcher/task/model/ConditionLogic;

    move-result-object v8

    if-eq v4, v8, :cond_55

    :cond_54
    move v1, v11

    :cond_55
    new-instance v8, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    if-eqz v6, :cond_57

    invoke-virtual {v6}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_56

    goto :goto_e

    :cond_56
    :goto_d
    move-object/from16 v18, v10

    goto :goto_f

    :cond_57
    :goto_e
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "toString(...)"

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :goto_f
    if-eqz v6, :cond_58

    invoke-virtual {v6}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getEnabled()Z

    move-result v10

    move/from16 v20, v10

    goto :goto_10

    :cond_58
    move/from16 v20, v11

    :goto_10
    if-eqz v1, :cond_5a

    :cond_59
    const/16 v25, 0x0

    goto :goto_11

    :cond_5a
    if-eqz v6, :cond_59

    invoke-virtual {v6}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getShareCode()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    :goto_11
    move-object/from16 v17, v8

    move-object/from16 v19, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v7

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    invoke-direct/range {v17 .. v25}, Lcom/deepalhome/launcher/task/model/ScheduledTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;

    invoke-direct {v0, v9, v8, v5}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/task/model/ScheduledTask;Landroid/app/Dialog;)V

    sget-object v1, Lcom/deepalhome/launcher/task/MagiskActivationManager;->INSTANCE:Lcom/deepalhome/launcher/task/MagiskActivationManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_12

    :cond_5b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/task/model/TaskAction;

    instance-of v2, v2, Lcom/deepalhome/launcher/task/model/TaskAction$ActivateMagisk;

    if-eqz v2, :cond_5c

    sget-object v1, Lcom/deepalhome/launcher/task/MagiskActivationManager;->INSTANCE:Lcom/deepalhome/launcher/task/MagiskActivationManager;

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$1;

    invoke-direct {v2, v0, v9}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$1;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;

    const-wide/16 v3, 0xfa0

    invoke-direct {v0, v3, v4, v2}, Lcom/deepalhome/launcher/util/RootAccessState$probeCurrentRootAccessAsync$1;-><init>(JLkotlin/jvm/functions/Function1;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->executeBySingle(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    goto :goto_13

    :cond_5d
    :goto_12
    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;->invoke()Ljava/lang/Object;

    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
